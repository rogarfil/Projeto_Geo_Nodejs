// Requisita o módulo express, body-parser, mysql instalado para que possa ser utilizado na aplicação
const express = require('express');
const bodyParser = require('body-parser');
const exphbs = require('express-handlebars');
const urlencodedParser = bodyParser.urlencoded({ extended: false });
const moment = require('moment');
const crud = require('crud');
let cruds = new crud();

// Cria uma instância da aplicação/Express
const app = express();
app.use('/css', express.static(__dirname + '/public/css'))
app.use('/js', express.static(__dirname + '/public/js'))
app.use('/img', express.static(__dirname + '/public/img'))

// Define a extensão e a instância do Handlebars com o modelo que será interpretado o código
app.engine('hbs', exphbs.engine({
    extname: '.hbs',
    helpers: {
        formatDate: (date) => {
            return moment(date).format('DD/MM/YYYY');
        }
    }
}));
// Define qual o template a ser utilizado
app.set('view engine', 'hbs');

// Registra uma rota get(sinalizando leitura) apontando para a raiz '/'.
// req: Request - Em resumo, corresponde as entradas, tudo aquilo que é enviado para o servidor 
// res: Response - Corresponde as saídas, tudo aquilo que é desejado enviar para o exterior
app.get('/', (req, res) => {
    // Envia uma string de resposta para a requisição realizada
    res.render('index');
});

// Passar uma rota com parâmetros trabalhar com Banco de Dados
app.get("/list", (req, res) => { cruds.read(req, res) });
app.get("/select/:idMonitoramento/:idPropriedade", (req, res) => { cruds.upload(req, res) });

// Inicializa o servidor observando a porta 3000
app.listen(3000, () => {
    console.log('Servidor rodando na porta 3000');
})