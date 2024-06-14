import 'package:app_moda_express/views/ayuda.dart';
//import 'package:app_moda_express/views/cupones.dart';
import 'package:app_moda_express/views/direccenv.dart';
import 'package:app_moda_express/views/login.dart';
import 'package:app_moda_express/views/metopago.dart';
import 'package:app_moda_express/views/notificaciones.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xC3606163),
      body: ListView(
        children: [
          SizedBox(height: 30),
          user(),
          SizedBox(height: 80),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.black,),
            title: Text('Dirección de Envío', style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Direccenv()), 
              );
            
            },
          ),
          ListTile(
            leading: Icon(Icons.payment, color: Colors.black,),
            title: Text('Método de Pago',style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MetodoPago()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.black,),
            title: Text('Ayuda', style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Ayuda()));
              // Acción al tocar Ayuda
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.black,),
            title: Text('Notificaciones',style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notificaciones()),
              );
              // Acción al tocar Notificaciones
            },
          ),
          // ListTile(
          //   leading:ImageIcon(AssetImage("assets/billete.png"), color: Colors.black,),
          //   title: Text('Cupones', style: TextStyle(color: Colors.black),),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Cupones()),
          //     );
          //     // Acción al tocar Cupones
          //   },
          // ),
          ListTile(
            leading: Icon(Icons.exit_to_app, color: Colors.black,),
            title: Text('Salir de tu Cuenta', style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
              // Acción al tocar Salir de tu Cuenta
            },
          ),
        ],
      ),
    );
  }
}

Widget user() {
  return Column(
    children: [
      Container(
        height: 80,
        child: Stack(
          children: [
            Container(
              width: 350,
              height: 80,
              decoration: ShapeDecoration(
                color: Color(0x93C4C5CF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            Positioned(
              left: 280,
              top: 9,
              child: Container(
                width: 59,
                height: 59,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Icon(
                  Icons.edit_square,
                  size: 30,
                ),
              ),
            ),
            Positioned(
              left: 120,
              top: 25.01,
              child: Text(
                'Nombre Y Apellido',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 27,
              top: 8,
              child: Container(
                width: 73,
                height: 66,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey, // Placeholder color for profile picture
                ),
                child: Icon(Icons.person,
                    size: 30), // Placeholder icon for profile picture
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
