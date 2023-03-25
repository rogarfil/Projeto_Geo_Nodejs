//Constants
const express = require('express');
const exphbs = require('express-handlebars');
const Handlebars = require('handlebars');
const bodyParser = require('body-parser');
const http = require('http');
const url = require('url');
const moment = require('moment');
const mysql = require('mysql');

const server = http.createServer((req, res) => {
    const urlObj = url.parse(req.url, true);
    const idMonitoramento = urlObj.query.idMonitoramento;
    const idPropriedade = urlObj.query.idPropriedade;
})

const connection = mysql.createConnection({
    user: 'root',
    password: '',
    host: 'localhost',
    database: 'geotecnologia'
})

const app = express();

app.use(bodyParser.urlencoded({ extended: false }));

app.use('/css', express.static(__dirname + '/public/css'));
app.use('/js', express.static(__dirname + '/public/js'));
app.use('/img', express.static(__dirname + '/public/img'));

// Template engine
app.engine('hbs', exphbs.engine({
    extname: '.hbs',
    helpers: {
        formatDate: (date) => {
            return moment(date).format('DD/MM/YYYY');
        }
    }
}));
app.set('view engine', 'hbs');

// Routes and Templates
app.get('/', (req, res) => { res.render('index'); })

app.get('/list', (req, res) => {
    connection.query('SELECT m.idMonitoramento, m.dataMonitoramento, m.analista, m.resultado, pd.idprodutor, pd.nomeProdutor, pd.cpfProdutor, pr.idPropriedade, pr.nomePropriedade, pr.numeroCadastroRural FROM propriedades pr, vinculo v INNER JOIN monitoramentos m ON (v.idVinculo = m.idVinculo) INNER JOIN produtores pd ON (v.idProdutor = pd.idProdutor) order by nomePropriedade ASC', (err, results, fields) => {
        res.render('list', { data: results });
    })
})

app.get('/select/:idMonitoramento', (req, res) => {
    connection.query('SELECT m.idMonitoramento, m.parecerAnalise, pd.idprodutor, pr.idPropriedade, pr.tipoPropriedade, v.idVinculo, v.tipoVinculoProdutor FROM propriedades pr, vinculo v INNER JOIN monitoramentos m ON (v.idVinculo = m.idVinculo) INNER JOIN produtores pd ON (v.idProdutor = pd.idProdutor) WHERE m.resultado = "Liberado" AND idMonitoramento=?', [req.params.idMonitoramento], (err, results, fields) => {
        res.render('select', { idMonitoramento: req.params.idMonitoramento, data: results });
    })
})

//Start server
app.listen(3000, () => {
    console.log('Server started on port 3000');
});
