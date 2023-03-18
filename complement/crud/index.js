const mysql = require('mysql2');

class Crud {
    constructor() {
        this.sql = mysql.createPool({
            user: 'root',
            password: '',
            host: 'localhost',
            database: 'geotecnologia'
        });
    }

    read(req, res) {
        this.sql.getConnection((err, connection) => {
            connection.query("SELECT m.idMonitoramento, m.dataMonitoramento, m.analista, m.resultado, pd.idprodutor, pd.nomeProdutor, pd.cpfProdutor, pr.idPropriedade, pr.nomePropriedade, pr.numeroCadastroRural FROM propriedades pr, vinculo v INNER JOIN monitoramentos m ON (v.idVinculo = m.idVinculo) INNER JOIN produtores pd ON (v.idProdutor = pd.idProdutor);", (err, results, fields) => {
                res.render('list', { data: results });
            });
        });
    }

    upload(req, res, controller = null) {
        this.sql.getConnection((err, connection) => {
            connection.query("SELECT m.idMonitoramento, m.parecerAnalise, pd.idprodutor, pr.idPropriedade, pr.tipoPropriedade, v.idVinculo, v.tipoVinculoProdutor FROM propriedades pr, vinculo v INNER JOIN monitoramentos m ON (v.idVinculo = m.idVinculo) INNER JOIN produtores pd ON (v.idProdutor = pd.idProdutor) WHERE m.resultado = 'Liberado AND idMonitoramento=? AND idPropriedade=?", [req.params.id], [req.params.id], (err, results, fields) => {
                res.render('select', { idMonitoramento: req.params.id, idPropriedade: req.params.id });
            });
        });
    }
}

module.exports = Crud;

/**
 * Como não era necessário o create e delete os mesmos foram retirados.
 */
