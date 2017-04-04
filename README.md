# Test Backend
the proyect was made with [express framework]("http://expressjs.com/"), [Materialize framework]("http://materializecss.com/") for the styles and use Mysql database.

## Description
The proyect has the structure of files and folders of Express, with the following order

* **bin/www**

 Configuration of the server and port of nodejs.

* **app.js**
 
 Configuration of express application, configure the views (lines 17), routes or apis (lines 62) and the connection to database (lines 29).

* **public/**
 
 Public files of the application, such as images, css and js.

* **routes/**
 
 Routes or apis where HTTP requests are processed.

* **views/**
 
 Views of the application express, developed in [jade] ("http://learnjade.com/").

* **database/store-item.sql**

 Script of the tables structure and register of the Mysql database.

* **config/main.js**

 File with constants for the global configuration, like database connection.  


## Prepare Proyect

* Install [NodeJs]("https://nodejs.org").
* Clone this proyect

    ```
    git clone url
    ```

* In a terminal and inside the folder, install dependencies

    ```
    npm install
    ```

## Run Proyect

In a terminal and inside the folder

```
npm start

```