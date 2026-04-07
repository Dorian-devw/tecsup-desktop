class Producto {
    var nombre: String
    var precio: Double
    
    init(nombre: String, precio: Double) {
        self.nombre = nombre
        self.precio = precio
    }
}

class Cliente {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
}

class Factura {
    var cliente: Cliente
    var productos: [Producto]
    
    init(cliente: Cliente, productos: [Producto]) {
        self.cliente = cliente
        self.productos = productos
    }
    
    func calcularTotal() -> Double {
        var total: Double = 0
        for p in productos {
            total += p.precio
        }
        return total
    }
    
    func mostrarFactura() {
        print("Cliente: \(cliente.nombre)")
        print("Productos:")
        for p in productos {
            print("- \(p.nombre): S/ \(p.precio)")
        }
        print("Total: S/ \(calcularTotal())")
    }
}

// Prueba
let p1 = Producto(nombre: "Laptop", precio: 3000)
let p2 = Producto(nombre: "Mouse", precio: 100)

let cliente1 = Cliente(nombre: "Dorian")

let factura = Factura(cliente: cliente1, productos: [p1, p2])
factura.mostrarFactura()