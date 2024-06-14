import 'package:app_moda_express/views/navBar_appBar.dart';
import 'package:flutter/material.dart';
import 'package:app_moda_express/views/recuperarcontra.dart';
import 'package:app_moda_express/views/registro.dart';
import 'package:app_moda_express/views/terminos_condiciones.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 10,
              right: 10,
              child: const Logo(),
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 60,
              child: const Formulario(),
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
class Formulario extends StatelessWidget {
  const Formulario({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'E-mail...',
                hintStyle: TextStyle(
                  color: Color(0xFF818080),
                  fontWeight: FontWeight.w700,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Contraseña...',
                hintStyle: TextStyle(
                  color: Color(0xFF818080),

                  fontWeight: FontWeight.w700,
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Funcionalidad pendiente
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2B2B2C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(130, 40),
                  ),
                  child: Text(
                    'Ingresar',
                    style: TextStyle(
                      color: Colors.white,

                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2C2C2D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(130, 40),
                  ),
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menuprin()),
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
                'Continuar como invitado',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PasswordRecuperar()),
                );
              },
              child: Text(
                '¿Olvidaste tu contraseña?',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tcondiciones()),
                );
              },
              child: Text(
                'Términos y condiciones',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
