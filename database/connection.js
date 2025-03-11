const mysql = require('mysql2');

const connection = mysql.createConnection({
	host: '127.0.0.1',
	database: 'sys',
	port: 3306,
	user: 'root',
	password: 'Password'
});

connection.connect((err => {
	console.log(`attempting to connect`); 
	if(err) throw err;
	console.log(`MySQL connected successfully!`);
}));

module.exports = connection; 
