
/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var user = require('./routes/user');
var http = require('http');
var path = require('path');
var mysql = require('mysql');
var app = express();

/* MYSQL */
var database =  'node_app';
var table = 'products';

var client = mysql.createConnection({
	user: 'root',
	password: 'leandro',
	host: 'localhost',
	port: 3306
});

client.query('USE ' +database);

/*
client.query (
	'INSERT INTO ' +table+ ' ' +
	'SET idt_product = 4, nome = ?',
	['iMac']
);
*/

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

app.get('/', routes.index);
app.get('/users', user.list);

// Lista de produtos
app.get('/produtos', function(req, res) {
	client.query(
		'SELECT * FROM ' + table,
		function(err, results, fields) {
			if ( err ) { 
				throw err;
			}
		
		res.render('lista_produtos', {
			produtos: results,
			title: 'Lista de produtos'
		})


		}
	);
});

// Produto singular
app.get('/produtos/view/:id', function(req, res) {
	client.query(
		'SELECT * FROM ' +table+ ' WHERE idt_product = "' + req.params.id + '"',
		function(err, results, fields) {
			if ( err ) {
				throw err;
			}
            
            res.render('produto_singular', {
            	produto: results,
            	title: results[0].nome
            });

		}
	)
})

// Adicionar produto ( FORM )
app.get('/produtos/add', function(req,res) {
	res.render('form_produtos', {title: 'Cadastrar produto'})
})

app.post('/produtos/add', function(req,res) {
	var nome = req.body.produto.nome;
		client.query (
		'INSERT INTO ' +table+ ' ' +
		'SET nome = ?',
		[nome]
	);

	res.redirect('/produtos');
})

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});