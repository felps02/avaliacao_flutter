import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  void _entrar(String nomeUsuario) {
    if (_formKey.currentState!.validate()) {
      // Navega para Home em caso de sucesso [cite: 19]
      Navigator.pushReplacementNamed(context, '/home', arguments: nomeUsuario);
    }
  }

  @override
  Widget build(BuildContext context) {
    final String nomeVindoDoCadastro = ModalRoute.of(context)!.settings.arguments as String? ?? 'Usuário';

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Icon(Icons.menu_book, size: 80, color: Colors.indigo),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value!.isEmpty ? 'Informe o email' : null,
                ),
                SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) => value!.isEmpty ? 'Informe a senha' : null,
                ),
                SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => _entrar(nomeVindoDoCadastro),
                    child: Text('ENTRAR', style: TextStyle(fontSize: 16)),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/'),
                  child: Text('Não tem conta? Cadastre-se'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}