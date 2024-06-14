import 'package:flutter/material.dart';

class MetodoPago extends StatelessWidget {
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
          'Metodo de Pagos',
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
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            // Encabezado con mensaje
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Puedes pagar con estas plataformas:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            metodoPagoTile(
              'assets/bcp.png',
              'BCP',
              'assets/fondo_bcp.png',
            ),
            metodoPagoTile(
              'assets/interbank.png',
              'Interbank',
              'assets/fondo_inter.png',
            ),
            metodoPagoTile(
              'assets/yape1.png',
              'Yape',
              'assets/yape_banner.jpg',
            ),
            metodoPagoTile(
              'assets/plin.png',
              'Plin',
              'assets/fondo_plin.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Widget metodoPagoTile(
      String imagePath, String companyName, String backgroundImage) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 50,
          ),
          SizedBox(width: 20),
          Text(
            companyName,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
