class BicicletaSmart {
  String marca;
  String modelo;
  int anio;
  bool tieneGPS;
  bool tieneMonitorRitmo;

  // Constructor
  BicicletaSmart({
    required this.marca,
    required this.modelo,
    required this.anio,
    required this.tieneGPS,
    required this.tieneMonitorRitmo,
  });

  // Constructor básica
  BicicletaSmart.basica({
    required this.marca,
    required this.modelo,
    required this.anio,
  }) : tieneGPS = false,
       tieneMonitorRitmo = false;

  // Constructor premium
  BicicletaSmart.premium({
    required this.marca,
    required this.modelo,
    required this.anio,
  }) : tieneGPS = true,
       tieneMonitorRitmo = true;

  // para mostrar descripción
  void descripcion() {
    print(
      'Bicicleta $marca $modelo ($anio) | GPS: $tieneGPS | Monitor Ritmo: $tieneMonitorRitmo',
    );
  }
}

void main() {
  // una bicicleta básica
  BicicletaSmart biciBasica = BicicletaSmart.basica(
    marca: 'EcoBike',
    modelo: 'Urban',
    anio: 2024,
  );
  biciBasica.descripcion();

  // una bicicleta premium
  BicicletaSmart biciPremium = BicicletaSmart.premium(
    marca: 'ProBike',
    modelo: 'SpeedX',
    anio: 2025,
  );
  biciPremium.descripcion();
}
