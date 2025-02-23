import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Us")),
      body: Center(
        child: Text(
          "App’s name : MyGeekHub \nVersion : 1.0 \nCreator’s name : Geoffroy B. \nStudent in the engineering school IMT Nord Europe \nGitHub : https://github.com/ounas35/AMSE",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
