import Foundation
class ClienteBase {
    var codigo: String
    var direccion: String
    var fechaRegistro: String
    var numeroCuenta: String
    var montoMinimo: Double
    
    init(codigo: String, direccion: String, fechaRegistro: String, numeroCuenta: String, montoMinimo: Double) {
        self.codigo = codigo
        self.direccion = direccion
        self.fechaRegistro = fechaRegistro
        self.numeroCuenta = numeroCuenta
        self.montoMinimo = montoMinimo
    }
    
    func mostrarDatos() {
        let monto = round(montoMinimo * 100) / 100
        print("Codigo: \(codigo)")
        print("Direccion: \(direccion)")
        print("Fecha de registro: \(fechaRegistro)")
        print("Cuenta: \(numeroCuenta)")
        print("Monto minimo: S/ \(monto)")
    }
}

class ClienteNatural: ClienteBase {
    var nombreCompleto: String
    var dni: String
    
    init(codigo: String, direccion: String, fechaRegistro: String, numeroCuenta: String, montoMinimo: Double,
         nombreCompleto: String, dni: String) {
        
        self.nombreCompleto = nombreCompleto
        self.dni = dni
        
        super.init(codigo: codigo, direccion: direccion, fechaRegistro: fechaRegistro, numeroCuenta: numeroCuenta, montoMinimo: montoMinimo)
    }
    
    override func mostrarDatos() {
        print("Cliente Natural:")
        print("Nombre: \(nombreCompleto)")
        print("DNI: \(dni)")
        super.mostrarDatos()
        print("----------------------------")
    }
}

class ClienteJuridico: ClienteBase {
    var razonSocial: String
    var ruc: String
    var representante: String
    
    init(codigo: String, direccion: String, fechaRegistro: String, numeroCuenta: String, montoMinimo: Double,
         razonSocial: String, ruc: String, representante: String) {
        
        self.razonSocial = razonSocial
        self.ruc = ruc
        self.representante = representante
        
        super.init(codigo: codigo, direccion: direccion, fechaRegistro: fechaRegistro, numeroCuenta: numeroCuenta, montoMinimo: montoMinimo)
    }
    
    override func mostrarDatos() {
        print("Cliente Juridico:")
        print("Razon Social: \(razonSocial)")
        print("RUC: \(ruc)")
        print("Representante: \(representante)")
        super.mostrarDatos()
    }
}

let cliente1 = ClienteNatural(
    codigo: "C001",
    direccion: "Av. Lima 123",
    fechaRegistro: "2025-04-03",
    numeroCuenta: "001-2025-000123",
    montoMinimo: 500,
    nombreCompleto: "Juan Perez",
    dni: "12345678"
)

let cliente2 = ClienteJuridico(
    codigo: "C002",
    direccion: "Jr. Empresas 456",
    fechaRegistro: "2025-04-01",
    numeroCuenta: "001-2025-000456",
    montoMinimo: 3000,
    razonSocial: "Soluciones SAC",
    ruc: "20123456789",
    representante: "Maria Leon"
)

cliente1.mostrarDatos()
cliente2.mostrarDatos()