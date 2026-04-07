class Persona {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func presentarse() {
        print("Hola, soy \(nombre)")
    }
}

class Profesor: Persona {
    override func presentarse() {
        print("Soy el profesor \(nombre)")
    }
}

class Estudiante: Persona {
    override func presentarse() {
        print("Soy el estudiante \(nombre)")
    }
}

// Prueba
let profe = Profesor(nombre: "Juan")
let alumno2 = Estudiante(nombre: "Pedro")

profe.presentarse()
alumno2.presentarse()