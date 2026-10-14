import 'package:flutter/material.dart';

// Point d'entrée : équivalent de ton index.js. runApp() monte le widget racine.
void main() {
  runApp(const IvoireCarApp());
}

// Un widget "stateless" : décrit l'UI à partir de données, sans état interne.
class IvoireCarApp extends StatelessWidget {
  const IvoireCarApp({super.key});

  // build() est appelée par Flutter pour (re)dessiner ce widget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IvoireCar',
      theme: ThemeData(colorSchemeSeed: Colors.green, useMaterial3: true),
      home: const Scaffold(
        body: Center(child: Text('Bienvenue sur IvoireCar, l\'application de covoiturage !')),
      ),
    );
  }
}