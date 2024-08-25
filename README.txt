Gestión de Productos y Usuarios en Dart

El objetivo:

    Crear clases en Dart (Producto y Usuario).
    Declarar e inicializar variables y listas.
    Utilizar métodos para establecer valores y realizar operaciones.
    Implementar lógica condicional para manipular listas (agregar y eliminar elementos).
    Comprender el flujo de control a través de la validación y el manejo de errores.
    Practicar la impresión de información estructurada a la consola.

    Clases y Métodos Implementados
1. Clase Producto

Propósito: Representa un producto con un nombre y un precio.
    Atributos:
        nombre: Nombre del producto, es un valor constante (final) que se establece al crear el objeto.
        precio: Precio del producto, que debe ser establecido posteriormente.

    Métodos:
        establecerPrecio(double nuevoPrecio): Establece el precio del producto si es mayor que cero; de lo contrario, lanza un error.
        mostrarProducto(): Muestra en la consola el nombre y el precio del producto.

2. Clase Usuario

Propósito: Representa a un usuario que puede comprar productos.
Atributos:

    nombre: Nombre del usuario, es un valor constante (final).
    correoElectronico: Email del usuario, opcional.
    productosComprados: Lista que almacena los productos comprados por el usuario.

Métodos:

    agregarProducto(Producto producto): Añade un producto a la lista productosComprados.
    eliminarProducto(String nombreProducto): Elimina el producto cuyo nombre coincida con nombreProducto de la lista.
    mostrarDetalles(): Muestra los detalles del usuario y los productos que ha comprado.

Función main

La función principal que se ejecuta al correr el programa. Aquí se crean los objetos, se manipulan y se muestran los resultados.