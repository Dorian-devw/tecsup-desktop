abstract class Orden {
  final String id;

  Orden(this.id);

  void ejecutar();
}

class Compra extends Orden {
  Compra(String id) : super(id);

  @override
  void ejecutar() {
    print('Ejecutando orden de compra $id');
  }
}

class Venta extends Orden {
  Venta(String id) : super(id);

  @override
  void ejecutar() {
    print('Ejecutando orden de venta $id');
  }
}

class Devolucion extends Orden {
  Devolucion(String id) : super(id);

  @override
  void ejecutar() {
    print('Ejecutando devolución $id');
  }
}

class GestorOrdenes {
  final List<Orden> _ordenes = [];

  // Contener órdenes permite trabajar con muchos tipos sin heredar de un gestor.
  // Es más flexible y el gestor no necesita cambiar cuando agrego un nuevo tipo.
  void agregar(Orden orden) {
    _ordenes.add(orden);
    print('Orden agregada: ${orden.id}');
  }

  void eliminar(String id) {
    _ordenes.removeWhere((orden) => orden.id == id);
    print('Orden eliminada: $id');
  }

  void procesarTodas() {
    print('Procesando todas las órdenes...');
    for (final orden in List<Orden>.from(_ordenes)) {
      orden.ejecutar();
    }
  }
}

void main() {
  print('--- Ejercicio 5: Gestor de órdenes ---');

  final gestor = GestorOrdenes();
  gestor.agregar(Compra('C001'));
  gestor.agregar(Venta('V002'));
  gestor.agregar(Devolucion('D003'));

  gestor.procesarTodas();
  print('');
  gestor.eliminar('V002');
  gestor.procesarTodas();
}
