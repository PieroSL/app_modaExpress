import 'package:app_moda_express/views/new_contra.dart';
import 'package:flutter/material.dart';

class PasswordRecuperar extends StatelessWidget {
  const PasswordRecuperar({super.key});
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
        title: Text('Recuperación de Contraseña',
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
      height: 400,
      padding: EdgeInsets.all(
          16.0), // Añade padding para evitar que el contenido esté muy pegado al borde
      decoration: BoxDecoration(
        color: Color(0x93C4C5CF),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize:
            MainAxisSize.min, // Ajusta el tamaño del contenedor al contenido
        children: [
          Text(
            '¿NO RECUERDAS TU CONTRASEÑA?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '¡No te preocupes!, nos sucede a todos.\nIngresa tu E-mail y DNI y te ayudaremos',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Icon(Icons.person_outline, size: 100, color: Colors.white),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const NewPassword()), // Asegúrate de que NewPassword está definido
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            child: Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
