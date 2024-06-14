import 'package:flutter/material.dart';

class Notificaciones extends StatelessWidget {
  // Clases
  final List<Notificacion> notificaciones = [
    Notificacion(
      tipo: "Oferta especial",
      producto: "Camisa de verano",
      marca: "Adidas",
      icono: Icons.star,
      mensaje: "¡Consigue hasta un 50% de descuento!",
    ),
    Notificacion(
      tipo: "Recomendación",
      producto: "Sudadera de edición limitada",
      marca: "Nike",
      icono: Icons.thumb_up,
      mensaje: "Echa un vistazo a nuestra nueva selección.",
    ),
    Notificacion(
      tipo: "Envío",
      producto: "Zapatos deportivos",
      marca: "Adidas",
      icono: Icons.local_shipping,
      mensaje: "Tu pedido ha sido enviado y llegará en 3 días hábiles.",
    ),
  ];

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
        title: Text(
          'Notificaciones',
          style: TextStyle(color: Colors.white),
        ),
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
      backgroundColor: Color(0xC3606163),
      body: SingleChildScrollView(
        child: Column(
          children: notificaciones.map((notificacion) {
            return NotificacionTile(
              tipo: notificacion.tipo,
              producto: notificacion.producto,
              marca: notificacion.marca,
              icono: notificacion.icono,
              mensaje: notificacion.mensaje,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Notificacion {
  final String tipo;
  final String producto;
  final String marca;
  final IconData icono;
  final String mensaje;

  Notificacion({
    required this.tipo,
    required this.producto,
    required this.marca,
    required this.icono,
    required this.mensaje,
  });
}

class NotificacionTile extends StatelessWidget {
  final String tipo;
  final String producto;
  final String marca;
  final IconData icono;
  final String mensaje;

  NotificacionTile({
    required this.tipo,
    required this.producto,
    required this.marca,
    required this.icono,
    required this.mensaje,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
      child: ListTile(
        leading: Icon(icono, size: 40.0, color: Colors.yellow),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        title: Text(
          "$tipo de $producto en Marca $marca",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(mensaje),
      ),
    );
  }
}
