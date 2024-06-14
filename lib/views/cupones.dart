import 'package:flutter/material.dart';

class Cupones extends StatelessWidget {
  const Cupones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xC3606163),
        body: Center(
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,
                right: 20,
                child: const TextCup(),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 20,
                child: const CupCard(),
              )
            ],
          ),
        ));
  }
}

class TextCup extends StatelessWidget {
  const TextCup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        decoration: BoxDecoration(
            color: Color.fromARGB(204, 36, 41, 66),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0x242942),
                blurRadius: 4,
                spreadRadius: 0,
              )
            ]),
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                  'Con ModaExpress, puedes disfrutar de cupones de descuento que podrás utilizar al realizar tus compras. Simplifica tu experiencia de compra y aprovecha las atractivas promociones disponibles al instante.\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  )),
            ])));
  }
}

class CupCard extends StatelessWidget {
  const CupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0x242942),
                blurRadius: 4,
                spreadRadius: 0,
              )
            ]),
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //TITULO
              ////////
              Text('Cupones disponibles',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      fontWeight: FontWeight.w700)),
              //
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                    width: 180,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Color(0xFF7C97B6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child:
                            //texto-01
                            Text(
                                'Chompas\n\n'
                                '25% de descuento en Chompas para dama y varon de cualquiera de las marcas\n\n'
                                'Vence el 30/06/2024',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600)))),
                //Boton-01
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2C2C2D),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(70, 40)),
                    child: Text('Usar Cupón',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700)))
              ]),
              //////
              SizedBox(height: 8),
              ///////////
              //CUPO-02//
              ///////////
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                    width: 180,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Color(0xFF90A4B9),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child:
                            //texto-01
                            Text(
                                'Levi s\n\n'
                                '35% de descuento en Jeans y chaquetas\n\n'
                                'Vence el 10/07/2024',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600)))),
                //Boton-01
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2C2C2D),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(70, 40)),
                    child: Text('Usar Cupón',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700))),
              ]),
              /////
              SizedBox(height: 8),
              ///////////
              //CUPO-03//
              ///////////
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Container(
                    width: 180,
                    height: 130,
                    decoration: BoxDecoration(
                        color: Color(0xFF7C97B6),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child:
                            //texto-03
                            Text(
                                'Tommy Hilfiger\n\n'
                                '30% de descuento en Camisas y pantalones\n\n'
                                'Vence el 15/08/2024',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600)))),
                //Boton-03
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2C2C2D),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: Size(70, 40)),
                    child: Text('Usar Cupón',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700)))
              ]),
            ])));
  }
}
