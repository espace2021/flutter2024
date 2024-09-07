import 'package:flutter/material.dart';
import 'package:myflutterapplication/approuter.dart';

// Fonction principale qui lance l'application Flutter
void main() {
  // Lance l'application en exécutant MyApp
  runApp(const MyApp());
}

// Définition de la classe stateless MyApp
class MyApp extends StatelessWidget {
  // Constructeur constant avec une clé facultative
  const MyApp({super.key});

  // Ce widget est la racine de l'application
  @override
  Widget build(BuildContext context) {
    // Retourne un MaterialApp configuré
    return MaterialApp(
      // Titre de l'application
      title: 'Flutter Application',
      // Thème de l'application avec une palette de couleurs personnalisée
      theme: ThemeData(
        // Utilisation d'un ColorScheme basé sur une couleur de départ
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Activation de Material Design 3
        useMaterial3: true,
      ),
      // Désactivation du bandeau "DEBUG"
      debugShowCheckedModeBanner: false,
       initialRoute: '/',
       routes: appRoutes(),  // Utilisation des routes depuis le fichier séparé
    );
  }
  
}


