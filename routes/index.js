const express = require('express');
const router = express.Router();

const controllers = require('../controllers');

// root page atau `/`
router.get('/', controllers.home);

module.exports = router;
