import 'package:flutter/material.dart';
import '../models/book.dart';

class HomeScreen extends StatelessWidget {
  final List<Book> livros = [
    Book(title: 'O Alquimista', author: 'Paulo Coelho'),
    Book(title: 'Dom Casmurro', author: 'Machado de Assis'),
    Book(title: '1984', author: 'George Orwell'),
    Book(title: 'O Pequeno Príncipe', author: 'Antoine de Saint-Exupéry'),
    Book(title: 'Capitães da Areia', author: 'Jorge Amado'),
  ];

  @override
  Widget build(BuildContext context) {
    final String nomeUsuario = ModalRoute.of(context)!.settings.arguments as String? ?? 'Usuário';

    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Controle de Leitura'),
        automaticallyImplyLeading: false, // Bloqueia volta para o login [cite: 24]
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.indigo.shade50,
              border: Border(bottom: BorderSide(color: Colors.indigo.shade100)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Olá,', style: TextStyle(fontSize: 16, color: Colors.indigo)),
                Text('$nomeUsuario!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.indigo.shade900)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.history, color: Colors.orange),
                SizedBox(width: 10),
                Text('ÚLTIMOS LIVROS LIDOS', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: livros.length,
              separatorBuilder: (context, index) => Divider(height: 1),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange.shade100,
                    child: Icon(Icons.book, color: Colors.orange.shade900),
                  ),
                  title: Text(livros[index].title, style: TextStyle(fontWeight: FontWeight.w600)),
                  subtitle: Text(livros[index].author),
                  trailing: Icon(Icons.chevron_right),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}