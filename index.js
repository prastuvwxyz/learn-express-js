const express = require('express');
const createError = require('http-errors');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');

const app = express();
const router = require('./routes');

// setup view engine
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'ejs');

// setup middleware
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use('/static', express.static(path.join(__dirname, 'public')));

app.use(router);

module.exports = app
