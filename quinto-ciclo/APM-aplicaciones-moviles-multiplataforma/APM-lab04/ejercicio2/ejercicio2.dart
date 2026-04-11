abstract class Experiencia {
  final String nombre;
  final String fecha;

  Experiencia(this.nombre, this.fecha);
  // Uso una clase base común para poder imprimir todas las experiencias igual
  // sin preguntar qué tipo son.

  String reporte();
}

class Clase extends Experiencia {
  final String profesor;

  Clase(String nombre, String fecha, this.profesor) : super(nombre, fecha);

  @override
  String reporte() {
    return 'Clase: $nombre | Fecha: $fecha | Profesor: $profesor';
  }
}

class Viaje extends Experiencia {
  final String destino;

  Viaje(String nombre, String fecha, this.destino) : super(nombre, fecha);

  @override
  String reporte() {
    return 'Viaje: $nombre | Fecha: $fecha | Destino: $destino';
  }
}

class Evento extends Experiencia {
  final String lugar;

  Evento(String nombre, String fecha, this.lugar) : super(nombre, fecha);

  @override
  String reporte() {
    return 'Evento: $nombre | Fecha: $fecha | Lugar: $lugar';
  }
}

void imprimirReportes(List<Experiencia> experiencias) {
  for (final experiencia in experiencias) {
    print(experiencia.reporte());
  }
}

void main() {
  final lista = [
    Clase('Pintura digital', '2026-04-12', 'Laura Ruiz'),
    Viaje('Senderismo', '2026-05-20', 'Valle Sagrado'),
    Evento('Concierto nocturno', '2026-06-01', 'Teatro Central'),
  ];

  print('--- Ejercicio 2: Reservas de experiencias ---');
  imprimirReportes(lista);
}
