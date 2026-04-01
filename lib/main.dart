import 'package:flutter/material.dart';
import 'screens/cadastro_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ControleLeituraApp());
}

class ControleLeituraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Leitura',
      initialRoute: '/',
      routes: {
        '/': (context) => CadastroScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}