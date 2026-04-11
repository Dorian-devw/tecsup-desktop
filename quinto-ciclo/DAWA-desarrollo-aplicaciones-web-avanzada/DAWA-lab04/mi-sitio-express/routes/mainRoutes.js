const express = require("express");
const router = express.Router();
const mainController = require("../controllers/mainController");


const dotaController = require("../controllers/dotaController");

// Definir rutas y asociarlas con controladores
router.get("/", mainController.home);
router.get("/about", mainController.about);

router.get("/contact", mainController.contact);
router.post("/contact", mainController.saveContact);
router.get("/admin", mainController.admin);



router.get("/dota", dotaController.index);
router.post("/dota", dotaController.create);

module.exports = router;
