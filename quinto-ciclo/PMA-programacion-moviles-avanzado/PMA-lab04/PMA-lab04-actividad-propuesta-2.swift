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
        print("Código: \(codigo)")
        print("Dirección: \(direccion)")
        print("Fecha Registro: \(fechaRegistro)")
        print("Cuenta: \(numeroCuenta)")
        print("Monto mínimo: \(montoMinimo)")
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
        super.mostrarDatos()
        print("Razón Social: \(razonSocial)")
        print("RUC: \(ruc)")
        print("Representante: \(representante)")
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
        super.mostrarDatos()
        print("Nombre: \(nombreCompleto)")
        print("DNI: \(dni)")
    }
}

// Prueba
let clienteNat = ClienteNatural(
    codigo: "001",
    direccion: "Lima",
    fechaRegistro: "2026",
    numeroCuenta: "12345",
    montoMinimo: 1000,
    nombreCompleto: "Dorian",
    dni: "12345678"
)

clienteNat.mostrarDatos()

print("-----")

let clienteJur = ClienteJuridico(
    codigo: "002",
    direccion: "Lima",
    fechaRegistro: "2026",
