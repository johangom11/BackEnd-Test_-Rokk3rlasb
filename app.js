var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var mysql = require("mysql");

var databaseConnection = require("./config/main").databaseConnection;
var data = require("./config/main").data;

var index = require('./routes/index');
var itemsApi = require('./routes/items-api');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//Database Connection
var db = mysql.createConnection(databaseConnection);
db.connect(err => {
  if (err) {
    console.error('DATABASE CONNECTION ERROR: \n' + err.stack);
    db = null;
  } else {
    let sql = "SELECT DISTINCT brand FROM product";
    db.query(sql, (err, results) => {
      if (!err) {
        app.set(data.brands, results);
      }
    });
    sql = "SELECT DISTINCT type FROM product";
    db.query(sql, (err, results) => {
      if (!err) {
        app.set(data.types, results);
      }
    });
  }
});

app.use((req, res, next) => {
  req.db = db;
  if (db == null) {
    res.send("Database not connected");
  } else {
    next();
  }
});



//Routes 
app.use('/', index);
app.use('/items', itemsApi);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function (err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function (err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});


module.exports = app;
