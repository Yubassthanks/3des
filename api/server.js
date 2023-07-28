const express = require ('express');
const cors = require('cors');

const app = express();

const cardapioRoutes = require('./src/routes/cardapio');

app.use(cors());
app.use(express.json());

app.use(cardapioRoutes);

app.listen(3000, () => {console.log("Teste")});