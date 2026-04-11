mixin Alerta {
  int get bateria;

  void enviarAlerta(String mensaje) {
    if (bateria > 0) {
      print('Alerta enviada: $mensaje (batería $bateria%)');
    } else {
      print('No se puede enviar alerta, batería agotada.');
    }
  }
}

mixin Geolocalizable {
  int get bateria;

  String obtenerUbicacion() {
    if (bateria > 0) {
      return 'Ubicación actual: Lat -12.045, Lon -77.030 (batería $bateria%)';
    }
    return 'No disponible, batería agotada.';
  }
}

class Sensor with Alerta {
  @override
  final int bateria;
  final String tipo;

  Sensor(this.tipo, this.bateria);
}

class Lampara with Alerta {
  @override
  final int bateria;
  final String modelo;

  Lampara(this.modelo, this.bateria);
}

class Dron with Geolocalizable, Alerta {
  @override
  final int bateria;
  final String nombre;

  Dron(this.nombre, this.bateria);
}

void main() {
  print('--- Ejercicio 4: Capacidades en objetos IoT ---');

  final sensor = Sensor('Temperatura', 75);
  final lampara = Lampara('Luz LED', 0);
  final dron = Dron('Aquila', 50);

  sensor.enviarAlerta('Temperatura crítica');
  lampara.enviarAlerta('Modo nocturno activado');
  print(dron.obtenerUbicacion());
  dron.enviarAlerta('Iniciando vuelo de reconocimiento');
}
