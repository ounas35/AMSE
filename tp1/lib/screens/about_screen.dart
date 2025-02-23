import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Us")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              '../assets/logo_app.png', // Remplace par le bon chemin de ton logo
              width: 300, // Ajuste la taille selon ton besoin
              height: 300,
            ),
            SizedBox(height: 20), // Espace entre le logo et le texte

            // Texte d'info
            Text(
              "App’s name : MyGeekHub \nVersion : 1.0 \nCreator’s name : Geoffroy B. \nStudent in the engineering school IMT Nord Europe \nGitHub : https://github.com/ounas35/AMSE",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
