const controller = {
    get: (req, res) => {
        res.render('home.html.ejs', { title: "Hello!" });
    }
}

module.exports = controller;