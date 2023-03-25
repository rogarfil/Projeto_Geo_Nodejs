## PROCESSO SELETIVO - LÓGICA PROGRAMAÇÃO EM PRÁTICA
### Aplicação de teste sobre lógica de programação e estruturação de código.

### Requisitos:
O Node.js que é um ambiente de servidor de plataforma cruzada e de código aberto que pode ser executado no Windows, Linux, Unix, macOS e muito mais. Node.js é um ambiente de tempo de execução JavaScript de back-end, executado no V8 JavaScript Engine e executa o código JavaScript fora de um navegador da web.

MySQL é um sistema open-source de gerenciamento de base de dados relacional. Para sites, isso quer dizer que ele ajuda a armazenar todas suas publicações, usuários, informações de plugins, etc. Ele armazena essas informações em “tabelas” separadas e as conecta com “chaves”, daí o seu nome relacional.

Para o MySQL usamos o XAMPP que é um pacote de pilha de solução de servidor web multiplataforma gratuito e de código aberto desenvolvido pela Apache Friends, consistindo principalmente no Apache HTTP Server, banco de dados MySQL e interpretadores de scripts escritos na linguagens que foi necessária.

Trabalhamos com HTML5, CSS3 e JS onde geramos através do comando npm init, o arquivo package.json, com as informações do Projeto e suas dependências.

ProjetoGeo
  ├── node_modules*
  ├    ├── crud
  ├── public
  ├    ├── css
  ├    ├── img
  ├    └── js  
  ├── views
  ├    ├── layouts
  ├    ├    └── main.hbs
  ├    ├── index.hbs
  ├    |── list.hbs  
  ├    └── select.hbs
  ├── package-lock.json
  ├── package.json
  ├── server.js  
  └── complement
       ├── crud
       ├    └── index.js
       └── db
            └── geotecnologia.sql

  * node_modules: relação de pastas que são dependências do Projeto
      * módulos essenciais pro CRUD:
      npm install --save express
      npm install --save nodemon
      npm install --save mysql2
      npm install --save body-parser
      npm install --save moment
      npm install --save express-handlebars
  * public: 
    . css, pasta com o arquivo style.css para formatação do projeto
    . img, contém todas as imagens utilizada no projeto
    . js, arquivo javascript.js com funções necessárias ao bom desempenho
  * views:
    . Contém a pasta layouts com o arquivo main.hbs que é o layout padrão do site a formatação que será visualizada, está página contém um navbar para o Menu e um Footer. Como um  bodyParser {{{body}}} e ela é dinâmica pois todas as outras páginas rodam nela.
    . index.hbs está página é a primeira a abrir (principal)
    . list.hbs está página contem a primeira solicitação do monitoramento (menu Monitoramento).
    . select.hbs está página recebe as informações vinda do botão da list.hbs, e está página contém um botão para compra que ao clicar fica ativado.
  * Na raiz do site temos a página server.js que é o core do nosso sistema.
  * Na pasta complement existem duas pastas importantes para o sistema, são:
    db, pasta que contem o arquivo do banco de dados geotecnologia.sql, e a pasta crud com o arquivo index.js que realiza o acesso ao Banco de Dados e manipula o SQL - create, edit, delete, update. Está pasta deve ser colocada na pasta node_modules, após as instalações dos módulos.

    ### Observações:
    1. No menu Monitoramento onde acessa o script list.hbs aparecem todos os registros com seus relacionamentos, na coluna Resultado onde temos a situação de BLOQUEADO, se utilizarmos o javascript.js onde está comentado '// Botão aparece' ele faz com que na situação de BLOQUEADO o botão Ver Detalhes não apareça, mas não resolvi o problema de link.
    2. Ao clicar no botão Ver Detalhes deveriamos chamar duas (id) :idMonitoramento e :idPropriedade para buscarmos as informações que realmente desejamos, listado no script select.hbs onde tem um botão para realizar a compra que é ativado quando clicado.
    3. Resumindo em Monitoramento aparecem todos os registros cadastrados e ao escolhermos qual queremos ver os detalhes para efetuar a compra se for BLOQUEADO abre o script vazio, mas se estiver Liberado esta mostrará todos os registros que tiverem o mesmo :idMonitoramento
	4. Neste novo contexto não existe a pasta crud, todo o SQL está sendo executado no script server.js