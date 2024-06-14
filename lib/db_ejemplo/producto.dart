import 'package:flutter/material.dart';
//clase para imagenes de categoria
class Producto {
  final String imagen;
  final String titulo;
  final double precio;
  final String descripcion;
  final List<Color> colores;
  final List<String> tallas;

  Producto({
    required this.imagen,
    required this.titulo,
    required this.precio,
    required this.descripcion,
    required this.colores,
    required this.tallas,
  });
}

class ProductoList {
  static List<Producto> getProducto() {
    return [
      Producto(
        imagen: 'assets/Image14.png',
        titulo: 'Chompa Hombre Sam Azul Dutty',
        precio: 64.94,
        descripcion: 'Esta chompa ligera para hombre, confeccionada en tela jersey de punto, ofrece un fit regular y un estilo moderno. Con un cuello redondo y mangas largas, es perfecta para renovar tu guardarropa con comodidad y elegancia. Compuesta por 81% algodón, 16% nailon y 3% spandex.',
        colores: [Colors.blue, Colors.black],
        tallas: ['S', 'M', 'L', 'XL'],
      ),
      Producto(
        imagen: 'assets/Image15.png',
        titulo: 'Vestido Mujer Caro Verde Dusty',
        precio: 64.95,
        descripcion: 'Descripción',
        colores: [Colors.green, Colors.yellow],
        tallas: ['S', 'M', 'L'],
      ),
      Producto(
        imagen: 'assets/Image16.png',
        titulo: 'Vestido Mujer Caro Verde Dusty',
        precio: 64.95,
        descripcion: 'Descripción',
        colores: [Colors.green, Colors.yellow],
        tallas: ['S', 'M', 'L'],
      ),
      Producto(
        imagen: 'assets/Image17.png',
        titulo: 'Vestido Mujer Caro Verde Dusty',
        precio: 64.95,
        descripcion: 'Descripción',
        colores: [Colors.green, Colors.yellow],
        tallas: ['S', 'M', 'L'],
      ),
      Producto(
        imagen: 'assets/Polos1.png',
        titulo: 'Polo',
        precio: 54,
        descripcion: 'Descripción',
        colores: [Colors.green, Colors.yellow],
        tallas: ['S', 'M', 'L'],
      ),
      Producto(
        imagen: 'assets/Jeans1.png',
        titulo: 'Jeans',
        precio: 64.95,
        descripcion: 'Descripción.',
        colores: [Colors.green, Colors.yellow],
        tallas: ['S', 'M', 'L'],
      ),
      Producto(
        imagen: 'assets/Ropa_deportiva1.png',
        titulo: 'ropa de portiva',
        precio: 64.95,
        descripcion: 'Descripción.',
        colores: [Colors.green, Colors.yellow],
        tallas: ['S', 'M', 'L'],
      ),
      Producto(
        imagen: 'assets/Vestido1.png',
        titulo: 'vestido para mujer',
        precio: 64.95,
        descripcion: 'Descripción.',
        colores: [Colors.green, Colors.yellow],
        tallas: ['S', 'M', 'L'],
      ),
      Producto(
        imagen: 'assets/Zapatillas1.png',
        titulo: 'Zapatillas',
        precio: 64.95,
        descripcion: 'Descripción.',
        colores: [Colors.green, Colors.yellow],
        tallas: ['S', 'M', 'L'],
      ),

      Producto(
        imagen: 'assets/01.jpg',
        titulo: 'Chompa Hombre Sam Azul Dutty',
        precio: 64.94,
        descripcion: 'Descripcion',
        colores: [Colors.blue, Colors.black],
        tallas: ['S', 'M', 'L', 'XL'],
      ),
      Producto(
        imagen: 'assets/02.jpg',
        titulo: 'Chompa Hombre Sam Azul Dutty',
        precio: 64.94,
        descripcion: 'Descripcion',
        colores: [Colors.blue, Colors.black],
        tallas: ['S', 'M', 'L', 'XL'],
      ),
      Producto(
        imagen: 'assets/03.jpg',
        titulo: 'Chompa Hombre Sam Azul Dutty',
        precio: 64.94,
        descripcion: 'Descripcion',
        colores: [Colors.blue, Colors.black],
        tallas: ['S', 'M', 'L', 'XL'],
      ),
      Producto(
        imagen: 'assets/04.jpg',
        titulo: 'Chompa Hombre Sam Azul Dutty',
        precio: 64.94,
        descripcion: 'Descripcion',
        colores: [Colors.blue, Colors.black],
        tallas: ['S', 'M', 'L', 'XL'],
      ),
      Producto(
        imagen: 'assets/05.jpg',
        titulo: 'Chompa Hombre Sam Azul Dutty',
        precio: 64.94,
        descripcion: 'Descripcion',
        colores: [Colors.blue, Colors.black],
        tallas: ['S', 'M', 'L', 'XL'],
      ),
      Producto(
        imagen: 'assets/06.jpg',
        titulo: 'Chompa Hombre Sam Azul Dutty',
        precio: 64.94,
        descripcion: 'Descripcion',
        colores: [Colors.blue, Colors.black],
        tallas: ['S', 'M', 'L', 'XL'],
      ),
    ];
  }
}



// carrito_manager.dart

class CarritoManager extends ChangeNotifier {
  final List<Producto> _productos = [];

  List<Producto> get productos => _productos;

  void agregarProducto(Producto producto) {
    _productos.add(producto);
    notifyListeners();
  }

  void quitarProducto(Producto producto) {
    _productos.remove(producto);
    notifyListeners();
  }
}