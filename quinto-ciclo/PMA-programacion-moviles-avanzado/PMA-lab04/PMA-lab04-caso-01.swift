class Mascota {
    var nombre: String
    var tipo: String
    var edad: Int
    
    init(nombre: String, tipo: String, edad: Int) {
        self.nombre = nombre
        self.tipo = tipo
        self.edad = edad
    }
    
    func mostrarDatos() {
        print("Nombre: \(nombre)")
        print("Tipo: \(tipo)")
        print("Edad: \(edad)")
    }
}

// Prueba
let mascota1 = Mascota(nombre: "Firulais", tipo: "Perro", edad: 3)
mascota1.mostrarDatos()