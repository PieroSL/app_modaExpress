import 'package:flutter/material.dart';

class Ayuda extends StatelessWidget {
  Ayuda({super.key});

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
        title: Text('Ayuda', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
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
      body: Center(
        child: Container(
          width: 340,
          height: 600,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color(0xFFC4C5CF),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 4,
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.black, width: 2.0),
                  ),
                  child: Text(
                    'Ayuda de la Aplicación ModaExpress',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  '¡Bienvenido a ModaExpress! Aquí encontrarás todo lo que necesitas saber para utilizar nuestra aplicación de manera efectiva.\n\nÍndice\n1. Inicio\n2. Navegación\n3. Buscar Productos\n4. Detalles del Producto\n5. Carrito de Compras\n6. Proceso de Pago\n7. Cuenta de Usuario\n8. Atención al Cliente',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Danos tu opinión',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Acción al enviar opinión
                  },
                  child: Text('Enviar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
