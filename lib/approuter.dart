// Importation des packages nécessaires
import 'package:flutter/material.dart';
import 'package:myflutterapplication/models/Product.class.dart';
import 'package:myflutterapplication/screens/details.dart';
import 'package:myflutterapplication/screens/documents.dart';
import 'package:myflutterapplication/screens/exitscreen.dart';
import 'package:myflutterapplication/screens/menu.dart';
import 'package:myflutterapplication/screens/myproducts.dart';
import 'package:myflutterapplication/screens/products.dart';
import 'package:myflutterapplication/screens/subscribe.dart';
import 'package:myflutterapplication/widgets/myappbar.dart';
import 'package:myflutterapplication/widgets/mybottomnavbar.dart';
import 'package:myflutterapplication/widgets/mydrawer.dart';

// Définition d'une fonction qui retourne les routes
Map<String, WidgetBuilder> appRoutes() {
    
  return {
    '/': (context) => const Scaffold(
          appBar: Myappbar(),
          body: Menu(),
          drawer: MyDrawer(),
          bottomNavigationBar: MyBottomNavigation(),
        ),
    '/Items': (context) => Scaffold(
          appBar: AppBar(
            title: const Text('My Products'),
          ),
          body: const Myproducts(),
          drawer: const MyDrawer(),
          bottomNavigationBar: const MyBottomNavigation(),
        ),
    '/Exit': (context) => const ExitScreen(), // Route associée à l'action de fermeture
    '/Documents': (context) => const Documents(), // Route pour l'écran Documents
    '/Products': (context) => const Products(), // Route pour l'écran Products
    '/details': (context) {final product = ModalRoute.of(context)!.settings.arguments as Product;
                               return Details(myListElement: product);
                             },  // Route pour l'écran Details 
    '/Subscribe': (context) => const Subscribe(), // Route pour l'écran Subscribe
  };
}
