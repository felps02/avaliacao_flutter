import 'package:flutter/material.dart';
import 'screens/cadastro_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() => runApp(LeituraApp());

class LeituraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Leitura',
      debugShowCheckedModeBanner: false,
      // Configuração Global de Cores e Estilos
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigo,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.indigo),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo, width: 2),
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CadastroScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}