
const home =  (req, res) => {
    res.render("home", { title: "Inicio" });
  };

const about = (req, res) => {
    res.render("about", { title: "Acerca de" });
  };

const mainController = {
  home, about
};

const messages = [];
const contact = (req, res) => {
    res.render("contact", { title: "Contacto" });
    
  };

const saveContact = (req, res) => {
    const { name, email, message } = req.body;
    messages.push({ name, email, message });
    console.log("Contacto recibido:", { name, email, message });
    res.redirect("/admin");
  };

const admin = (req, res) => {
    res.render("admin", { title: "Admin", messages });
  };

mainController.contact = contact;
mainController.saveContact = saveContact;
mainController.admin = admin; 
module.exports = mainController;
