const heroes = [];

const index = (req, res) => {
    res.render("dota", { title: "Héroes de Dota 2", heroes });
};

const create = (req, res) => {
    const { nombre, rol, atributo, dificultad, descripcion } = req.body;
    heroes.push({ nombre, rol, atributo, dificultad: parseInt(dificultad), descripcion });
    res.redirect("/dota");
};

const dotaController = {
    index,
    create
};

module.exports = dotaController;

