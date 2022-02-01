/* GET home page. */
app.get('/', function(req, res, next) {
  res.render('contact-us', { title: 'Contact-Us' });
});
 
app.post('/contact-us', function(req, res, next) {
  var user_nome = req.body.user_name_cad;
  var user_email = req.body.user_email_cad;
  var user_cidade = req.body.user_cid_cad;
  var user_pass = req.body.user_pass_cad;
 
  var sql = `INSERT INTO contacts (user_nome, user_email, user_cidade ,user_pass) VALUES ("${user_nome}", "${user_email}", "${user_cidade}", "${user_pass}", NOW())`;
  db.query(sql, function(err, result) {
    if (err) throw err;
    console.log('record inserted');
    req.flash('success', 'Data added successfully!');
    res.redirect('/');
  });
});

var mysql = require('mysql');
var conn = mysql.createConnection({
  host: 'localhost', // Replace with your host name
  user: 'root',      // Replace with your database username
  password: '11055460',      // Replace with your database password
  database: 'pi' // // Replace with your database Name
}); 
 
conn.connect(function(err) {
  if (err) throw err;
  console.log('Database is connected successfully !');
});
module.exports = conn;

var db = require('db/pi');