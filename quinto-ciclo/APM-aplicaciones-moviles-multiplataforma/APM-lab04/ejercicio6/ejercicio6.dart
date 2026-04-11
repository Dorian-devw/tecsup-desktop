class Producto {
  final String nombre;
  final double precio;

  Producto(this.nombre, this.precio);

  String descripcion() {
    return 'Producto: $nombre | Precio: \$${precio.toStringAsFixed(2)}';
  }
}

class Electronico extends Producto {
  final int garantiaMeses;

  Electronico(String nombre, double precio, this.garantiaMeses)
      : super(nombre, precio);

  @override
  String descripcion() {
    return '${super.descripcion()}\nGarantía: $garantiaMeses meses';
  }
}

void main() {
  print('--- Ejercicio 6: Extensión de descripciones ---');

  final producto = Producto('Cuaderno', 12.50);
  final electronico = Electronico('Auriculares', 89.90, 24);

  print(producto.descripcion());
  print('');
  print(electronico.descripcion());
}
