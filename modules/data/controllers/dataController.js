const router            = require('express').Router();
const dataModel         = require('../models/dataModel');

router.get('/data', async(req, res, next) => {
    let response = { status:0, message: 'Success', data: null}

    let getData = await dataModel.allData()
    let pivotData = await dataModel.pivotData()

    let jsonData = {
        all : getData,
        pivot: pivotData
    }

    response.data = jsonData
    return res.send(response)
});

module.exports = router