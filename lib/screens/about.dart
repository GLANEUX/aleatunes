import 'package:flutter/material.dart';
import 'components/logo_header.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
                    LogoHeader(),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                
                  SizedBox(height: 20.0),
                  Text(
                    'À Propos de Notre Application',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Bienvenue sur notre application dédiée à la découverte de nouvelles musiques et de nouveaux artistes ! Notre plateforme a été créée dans le but de vous offrir une expérience unique et enrichissante dans le monde de la musique.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Fonctionnalités Principales :',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '1. Découverte Aléatoire : Explorez de nouvelles musiques et artistes de manière aléatoire pour enrichir votre bibliothèque musicale.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    '2. Blog : Lisez des articles informatifs sur la musique, les artistes et les tendances actuelles.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 20.0),
                  Text(
                    'Application crée par Océane GLANEUX, utilisant l\'api de deezer.',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Explorez. Découvrez. Appréciez.',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
