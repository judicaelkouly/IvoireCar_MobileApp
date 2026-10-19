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
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.orange],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border.all(color: Colors.green, width: 3.0),
          boxShadow: [BoxShadow(
            color: Colors.orange,
            spreadRadius: 10.0,
            blurRadius: 10.0,
          )],
          shape: BoxShape.circle,
        ),
        width: 200.0,
        height: 200.0,
        alignment: Alignment.center,
        child: Text.rich(
        TextSpan(
          text: "Ivo",
          style: TextStyle(
            color: Colors.orange,
          ),
          children: [
            TextSpan(
              text: "ire",
              style: TextStyle(
            color: Colors.white,
          ),
            ),
            TextSpan(
              text: "Car",
              style: TextStyle(
            color: Colors.greenAccent,
          ),
            )
          ]
        ),
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          
        ),
        
      ),
      )
    );
  
  }
}