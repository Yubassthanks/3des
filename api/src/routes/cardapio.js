const express = require('express');

const router = express.Router();

const cardapio = require('../controllers/cardapio-controller');

router.post('/cardapio', cardapio.create);
router.get('/cardapio', cardapio.read);
router.put('/cardapio/:id', cardapio.update);
router.delete('/cardapio/:id', cardapio.remove);

module.exports = router;