// clase abstracta
abstract class Trabajador {
  String nombre;
  double salarioMensual;

  Trabajador({required this.nombre, required this.salarioMensual});

  // metodo abstracto
  double calcularBonificacion();

  void mostrarDatos() {
    print('Trabajador: $nombre | Salario: $salarioMensual');
  }
}

// adm sistemas
class AdministradorSistemas extends Trabajador {
  AdministradorSistemas({
    required String nombre,
    required double salarioMensual,
  }) : super(nombre: nombre, salarioMensual: salarioMensual);

  @override
  double calcularBonificacion() {
    return salarioMensual * 0.18;
  }
}

// Subclase
class TecnicoSoporte extends Trabajador {
  TecnicoSoporte({required String nombre, required double salarioMensual})
    : super(nombre: nombre, salarioMensual: salarioMensual);

  @override
  double calcularBonificacion() {
    return salarioMensual * 0.10;
  }
}

void main() {
  // instancias
  Trabajador admin = AdministradorSistemas(
    nombre: 'Carlos',
    salarioMensual: 3000,
  );
  Trabajador tecnico = TecnicoSoporte(nombre: 'Ana', salarioMensual: 2000);

  List<Trabajador> personal = [admin, tecnico];

  for (var trabajador in personal) {
    trabajador.mostrarDatos();
    print('Bonificación: ${trabajador.calcularBonificacion()}');
    print('---');
  }
}
