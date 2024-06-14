import 'package:flutter/material.dart';

class Tcondiciones extends StatelessWidget {
  const Tcondiciones({super.key});
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
        title: Text('Términos y Condiciones',
            style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 20,
              right: 20,
              bottom: 50,
              child: const texto(),
            ),
            Positioned(
              top: 10,
              left: 10,
              right: 10,
              child: const Logo(),
            ),
          ],
        ),
      ),
    );
  }
}

//imagen logo
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo.png',
      width: 200,
      height: 200,
    );
  }
}


// formulario
class texto extends StatelessWidget {
  const texto({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 450,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4.0,
                offset: Offset(0, 2),
              ),
            ],
          ), 
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Términos y Condiciones de ModaExpress\n\n'
          'Bienvenido a ModaExpress. Al usar nuestra aplicación, aceptas cumplir con los siguientes términos y condiciones. Por favor, léelos detenidamente.\n\n'
          '1. Aceptación de los Términos\n'
          '2. Uso de la Aplicación\n'
          '3. Registro de Cuenta\n'
          '4. Compras y Pagos\n'
          '5. Envío y Entrega\n'
          '8. Privacidad\n',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}