import 'package:app_moda_express/db_ejemplo/producto.dart';
import 'package:app_moda_express/views/carritocompras.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_moda_express/views/login.dart';

void main() {
  runApp(
    //clase producto class carritomanager
    ChangeNotifierProvider(
      create: (context) => CarritoManager(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moda Express',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/carrito': (context) => const Carrito(),//carrito
      },
    );
  }
}



//como generar apk  comando --->  flutter build apk
//ruta --->  \build\app\outputs\flutter-apk

