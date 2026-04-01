import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  void _entrar(String nomeVindoDoCadastro) {
    if (_formKey.currentState!.validate()) {
      // Navega para Home levando o nome original
      Navigator.pushReplacementNamed(context, '/home', arguments: nomeVindoDoCadastro);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Recebe o nome enviado pela tela de cadastro
    final String nomeUsuario = ModalRoute.of(context)!.settings.arguments as String? ?? 'Usuário';

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) => value!.isEmpty ? 'Informe o email' : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Senha'),
                obscureText: true,
                validator: (value) => value!.isEmpty ? 'Informe a senha' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _entrar(nomeUsuario),
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}