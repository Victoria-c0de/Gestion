class Producto {
  final String nombre;
  late double precio;

  Producto(this.nombre);

  void establecerPrecio(double nuevoPrecio) {
    if (nuevoPrecio <= 0) {
      throw ArgumentError('El precio debe ser mayor que cero.');
    }
    precio = nuevoPrecio;
  }

  void mostrarProducto() {
    print('Producto: $nombre, Precio: \$${precio.toStringAsFixed(2)}');
  }
}

class Usuario {
  final String nombre;
  String? correoElectronico;
  List<Producto> productosComprados = [];

  Usuario(this.nombre, [this.correoElectronico]);

  void agregarProducto(Producto producto) {
    productosComprados.add(producto);
  }

  void eliminarProducto(String nombreProducto) {
    productosComprados.removeWhere((producto) => producto.nombre == nombreProducto);
  }

  void mostrarDetalles() {
    print('--- Detalles del Usuario ---');
    print('Nombre: $nombre');
    if (correoElectronico != null) {
      print('Correo Electrónico: $correoElectronico');
    } else {
      print('Correo Electrónico: No disponible');
    }

    if (productosComprados.isNotEmpty) {
      print('Productos comprados:');
      for (var producto in productosComprados) {
        producto.mostrarProducto();
      }
    } else {
      print('No ha comprado ningún producto.');
    }
    print('-----------------------------\n');
  }
}

void main() {
  // Crear usuarios
  var usuario1 = Usuario('Nombre', 'Nombre@example.com');

  // Crear productos
  var producto1 = Producto('Laptop');
  producto1.establecerPrecio(1200.00);

  var producto2 = Producto('Smartphone');
  producto2.establecerPrecio(800.00);

  var producto3 = Producto('Tablet');
  producto3.establecerPrecio(500.00);

  // Asociar productos a usuarios
  usuario1.agregarProducto(producto1);
  usuario1.agregarProducto(producto2);
  usuario1.agregarProducto(producto3);

  // Mostrar detalles antes de la eliminación
  print('Antes de eliminar un producto:');
  usuario1.mostrarDetalles();

  // Eliminar un producto
  usuario1.eliminarProducto('Smartphone');

  // Mostrar detalles después de la eliminación
  print('Después de eliminar el producto "Smartphone":');
  usuario1.mostrarDetalles();
}
