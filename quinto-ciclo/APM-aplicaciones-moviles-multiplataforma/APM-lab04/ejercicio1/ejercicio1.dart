// Uso herencia para compartir lo común y extender lo diferente.
// Contenido tiene los datos básicos, y cada subtipo agrega su propio detalle.
class Contenido {
  final String titulo;
  final String autor;
  final int anio;

  Contenido(this.titulo, this.autor, this.anio);

  String ficha() {
    return 'Título: $titulo\nAutor: $autor\nAño: $anio';
  }
}

class Libro extends Contenido {
  final int paginas;

  Libro(String titulo, String autor, int anio, this.paginas)
      : super(titulo, autor, anio);

  @override
  String ficha() {
    return '${super.ficha()}\nPáginas: $paginas';
  }
}

class Pelicula extends Contenido {
  final int duracionMinutos;

  Pelicula(String titulo, String autor, int anio, this.duracionMinutos)
      : super(titulo, autor, anio);

  @override
  String ficha() {
    return '${super.ficha()}\nDuración: ${duracionMinutos} min';
  }
}

void main() {
  final libro = Libro('El viaje interplanetario', 'Ana Torres', 2024, 328);
  final pelicula = Pelicula('Código secreto', 'Carlos Lima', 2023, 125);

  print('--- Ejercicio 1: Biblioteca multimedia ---');
  print(libro.ficha());
  print('');
  print(pelicula.ficha());
}
