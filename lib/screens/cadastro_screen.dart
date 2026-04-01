import 'package:flutter/material.dart';

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();

  void _cadastrar() {
    if (_formKey.currentState!.validate()) {
      // Navega para Login passando o nome cadastrado [cite: 14]
      Navigator.pushReplacementNamed(context, '/login', arguments: _nomeController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criar Conta')),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Icon(Icons.person_add, size: 80, color: Colors.indigo),
                SizedBox(height: 20),
                TextFormField(
                  controller: _nomeController,
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value!.isEmpty ? 'Informe seu nome' : null,
                ),
                SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) => value!.isEmpty ? 'Informe seu email' : null,
                ),
                SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) => value!.length < 6 ? 'Mínimo 6 caracteres' : null,
                ),
                SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _cadastrar,
                    child: Text('CADASTRAR', style: TextStyle(fontSize: 16)),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
                  child: Text('Já tem uma conta? Faça Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}