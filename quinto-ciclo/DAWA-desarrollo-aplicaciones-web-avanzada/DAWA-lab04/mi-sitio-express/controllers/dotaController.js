const heroes = [];

const fetchOpenDotaHeroes = async () => {
    const response = await fetch("https://api.opendota.com/api/heroStats");
    const data = await response.json();
    return data.map((hero) => ({
        nombre: hero.localized_name,
        atributo: hero.primary_attr,
        icono: `https://cdn.cloudflare.steamstatic.com${hero.icon}`
    }));
};

const index = async (req, res, next) => {
    try {
        const apiHeroes = await fetchOpenDotaHeroes();
        res.render("dota", { title: "Héroes de Dota 2", heroes, apiHeroes });
    } catch (error) {
        console.error("Error cargando OpenDota:", error);
        res.render("dota", { title: "Héroes de Dota 2", heroes, apiHeroes: [] });
    }
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

