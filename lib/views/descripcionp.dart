import 'package:app_moda_express/views/carritocompras.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_moda_express/db_ejemplo/producto.dart';


class DescripcionProducto extends StatefulWidget {
  final Producto producto;

  const DescripcionProducto({super.key, required this.producto});

  @override
  _DescripcionProductoState createState() => _DescripcionProductoState();
}

class _DescripcionProductoState extends State<DescripcionProducto> {
  int cantidad = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Descripción de Producto',
            style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              'assets/logo.png',
              height: 40,
              width: 40,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 250,
                height: 270,
                child: Image.asset(widget.producto.imagen),
              ),
            ),
            SizedBox(height: 8),
            Text(
              widget.producto.titulo,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'S/ ${widget.producto.precio.toStringAsFixed(2)}',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 8),
            Text(
              widget.producto.descripcion,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Colores',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 8),
            Row(
              children: widget.producto.colores
                  .map((color) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Talla',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 8),
            Row(
              children: widget.producto.tallas
                  .map((talla) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Chip(
                          label: Text(
                            talla,
                            style: TextStyle(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                          shape: StadiumBorder(
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Cantidad',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      if (cantidad > 1) {
                        cantidad--;
                      }
                    });
                  },
                ),
                Text(
                  '$cantidad',
                  style: TextStyle(color: Colors.black),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      cantidad++;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final carritoManager = Provider.of<CarritoManager>(context, listen: false);
                  for (int i = 0; i < cantidad; i++) {
                    carritoManager.agregarProducto(widget.producto);
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Carrito()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2C2C2D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(224, 49),
                ),
                child: Text(
                  'Añadir al carrito',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
