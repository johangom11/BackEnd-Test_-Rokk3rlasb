var express = require('express');
var data = require('../config/main').data;
var router = express.Router();

router.get('/', function (req, res, next) {
    let query = req.query.q;
    let criteria = processQuery(req, query);
    let sql = "SELECT * FROM product WHERE type LIKE '" + criteria.type + "' AND brand LIKE '" + criteria.brand;
    if (criteria.features != '') {
        sql += "' AND features LIKE '%" + criteria.features + "%'";
    }
    req.db.query(sql, (err, results) => {
        if (err) {
            console.log(err);
            res.send([]);
        } else {
            res.send(results);
        }
    });

});

function processQuery(req, query) {
    let q = query.toLowerCase();
    let brands = req.app.get(data.brands);
    let types = req.app.get(data.types);

    // Get Brand
    let selectedBrands = [];
    brands.forEach(data => {
        let b = data.brand.toLowerCase();
        if (q.includes(b)) selectedBrands.push(b);
    });
    if (selectedBrands.length > 1) {
        selectedBrands = selectedBrands.filter(b => { return b.includes(' ') });
    }

    // Get Type
    let selectedType;
    for (i in types) {
        let t = types[i].type.toLowerCase();
        if (q.includes(t)) {
            selectedType = t;
            break;
        }
    }

    //Get Features
    let features = q.replace(selectedBrands[0], '');
    features = features.replace(selectedType, '');
    features = features.replace(/\s+/g, '');


    return { type: selectedType, brand: selectedBrands[0], features: features };

}
module.exports = router;
