mixin InfoA {
  String info() {
    return 'InfoA: datos básicos';
  }
}

mixin InfoB {
  String info() {
    return 'InfoB: datos avanzados';
  }
}

class Entidad with InfoA, InfoB {
  @override
  String info() {
    return 'Entidad final: ${super.info()}';
  }
}

void main() {
  print('--- Ejercicio 7: Choque de mixins ---');

  final entidad = Entidad();
  print(entidad.info());
}
