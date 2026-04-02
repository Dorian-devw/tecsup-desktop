class Persona {
  String nombre;
  int? edad;

  // Constructor
  Persona({required this.nombre, required this.edad});

  Persona.soloNombre({required this.nombre});

  // Método
  void presentarse() {
    print('Hola, soy $nombre y tengo $edad años.');
  }
}

// Clase Estudiante que hereda de Persona
class Estudiante extends Persona {
  String carrera;

  // Constructor que inicializa también la clase padre
  Estudiante({required String nombre, required int edad, required this.carrera})
    : super(nombre: nombre, edad: edad);

  // Sobrescribir método
  @override
  void presentarse() {
    print('Hola, soy $nombre, tengo $edad años y estudio $carrera.');
  }
}

// Clase Profesor que hereda de Persona
class Profesor extends Persona {
  String especialidad;

  Profesor({
    required String nombre,
    required int edad,
    required this.especialidad,
  }) : super(nombre: nombre, edad: edad);

  @override
  void presentarse() {
    print(
      'Hola, soy el profesor $nombre, tengo $edad años '
      'y enseño $especialidad.',
    );
  }
}

// Ejemplo en main
void main() {
  Persona persona2 = Persona.soloNombre(nombre: 'Carlos');
  persona2.presentarse();

  final persona = Persona(nombre: 'Carlos', edad: 40);
  persona.presentarse();

  final estudiante = Estudiante(nombre: 'Ana', edad: 20, carrera: 'Ingeniería');
  estudiante.presentarse();

  final profesor = Profesor(
    nombre: 'María',
    edad: 35,
    especialidad: 'Matemáticas',
  );
  profesor.presentarse();
}
