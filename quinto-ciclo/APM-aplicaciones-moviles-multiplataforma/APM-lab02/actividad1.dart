class Dron {
  String id;
  double capacidadcargaKg;
  int autonomiaMin;

  // Constructor
  Dron({
    required this.id,
    required this.capacidadcargaKg,
    required this.autonomiaMin,
  });

  // netodo
  void mostrarFicha() {
    print(
      'Dron $id | Carga: $capacidadcargaKg kg | Autonomía: $autonomiaMin min',
    );
  }
}

class DronMaritimo extends Dron {
  String resistenciaCorrosion;

  // Constructor
  DronMaritimo({
    required String id,
    required double capacidadcargaKg,
    required int autonomiaMin,
    required this.resistenciaCorrosion,
  }) : super(
         id: id,
         capacidadcargaKg: capacidadcargaKg,
         autonomiaMin: autonomiaMin,
       );

  //  mostrarFicha
  @override
  void mostrarFicha() {
    print(
      'Dron Marítimo $id | Carga: $capacidadcargaKg kg | Autonomía: $autonomiaMin min | Resistencia: $resistenciaCorrosion',
    );
  }
}

void main() {
  Dron droncito1 = Dron(id: 'D001', capacidadcargaKg: 5.0, autonomiaMin: 30);
  droncito1.mostrarFicha();

  DronMaritimo droncitomaritimo1 = DronMaritimo(
    id: 'DM001',
    capacidadcargaKg: 8.0,
    autonomiaMin: 45,
    resistenciaCorrosion: 'Alta',
  );
  droncitomaritimo1.mostrarFicha();
}
