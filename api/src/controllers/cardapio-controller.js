const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient();

const create = async (req, res) => {
    let cardapio = await prisma.cardapio.create({
        data: req.body
    });

    res.status(200).json(cardapio).end();
}

const read = async (req, res) => {
    let cardapios = await prisma.cardapios.findMany();
    res.status(200).json(cardapios).end();
}

const update = async (req, res) => {
    let cardapio = await prisma.cardapio.update({
        data: req.body
    });
    res.status(200).json(cardapio).end();
}

const remove = async (req, res) => {
    let cardapio = await prisma.cardapio.delete({
        where: {
            id: req.params.id
        }
    });

    res.status(200).json(cardapio).end();
}

module.exports = {
    create,
    read,
    update,
    remove
}