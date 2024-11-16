import 'package:anjos_do_poco/Screens/cadastro.dart';
import 'package:flutter/material.dart';
import 'Screens/home.dart';
import 'Screens/splash_page.dart';
import 'Screens/cadastro.dart';
import 'Screens/ficha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorObservers: const [],
      initialRoute: '/home',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => Home(),
        '/cad': (context) => Cadastro(),  
        '/ficha': (context) => Ficha(),  

      },
    );
  }
}
