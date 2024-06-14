import 'package:app_moda_express/views/carritocompras.dart';
import 'package:app_moda_express/views/cuentauser.dart';
import 'package:app_moda_express/views/cupones.dart';
import 'package:app_moda_express/views/menu.dart';
import 'package:app_moda_express/views/menu_principal.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/rendering.dart';

import 'package:line_icons/line_icons.dart';

//aqui estan appbar y navigation bar de menu principal
class Menuprin extends StatefulWidget {
  Menuprin({super.key});

  @override
  State<Menuprin> createState() => _MenuprinState();
}

class _MenuprinState extends State<Menuprin> {
  int pagesv = 0;

  late List<Widget> paginas;
  late Widget _currentBody;

  @override
  void initState() {
    super.initState();
    paginas = [
      Home(navigateToPage: _navigateToPage),
      Menu(),
      Cuenta(),
      Cupones(),
    ];
    _currentBody = paginas[0];
  }

  void _navigateToPage(Widget page) {
    setState(() {
      _currentBody = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/logo.png', height: 40),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Carrito()),
              );
            },
          ),
        ],
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
      body: _currentBody,
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: EdgeInsets.all(16),
            selectedIndex: pagesv,
            onTabChange: (index) {
              setState(() {
                pagesv = index;
                _currentBody = paginas[index];
              });
            },
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Inicio',
              ),
              GButton(
                icon: LineIcons.bars,
                text: 'Menu',
              ),
              GButton(
                icon: LineIcons.userCircle,
                text: 'Perfil',
              ),
              GButton(
                icon: LineIcons.alternateTicket,
                text: 'Cupones',
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/// otro diseño  de navbar remplasado de container
//  Container(
//         color: Colors.black,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
//           child:
//           // librera nav bar implementado
//           GNav(
//             rippleColor: Colors.grey[800]!,
//             hoverColor: Colors.grey[700]!,
//             haptic: true, 
//             tabBorderRadius: 15,
//             tabActiveBorder: Border.all(color: Colors.black, width: 1),
//             tabBorder: Border.all(color: Colors.grey, width: 1),
//             tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)],
//             curve: Curves.easeOutExpo, 
//             duration: Duration(milliseconds: 900),
//             gap: 8,
//             color: Colors.grey[400],
//             activeColor: Colors.white,
//             iconSize: 24,
//             tabBackgroundColor: const Color.fromARGB(255, 185, 181, 182).withOpacity(0.1), 
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//             tabs: [
//               GButton(
//                 icon: LineIcons.home,
//                 text: 'Home',
//               ),
//               GButton(
//                 icon: LineIcons.bars,
//                 text: 'Menu',
//               ),
//               GButton(
//                 icon: LineIcons.userCircle,
//                 text: 'Perfil',
//               ),
//               GButton(
//                 icon: LineIcons.alternateTicket,
//                 text: 'Cupones',
//               ),
//             ],
//             selectedIndex: pagesv,
//             onTabChange: (index) {
//               setState(() {
//                 pagesv = index;
//                 _currentBody = paginas[index];
//               });
//             },
//           ),
//         ),
//       ),