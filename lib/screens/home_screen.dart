import 'package:flutter/material.dart';
import '../models/book.dart';

class HomeScreen extends StatelessWidget {
  // Lista estática dos últimos 5 livros [cite: 7, 22]
  final List<Book> livros = [
    Book(title: 'O Alquimista', author: 'Paulo Coelho'),
    Book(title: 'Dom Casmurro', author: 'Machado de Assis'),
    Book(title: '1984', author: 'George Orwell'),
    Book(title: 'O Pequeno Príncipe', author: 'Antoine de Saint-Exupéry'),
    Book(title: 'Capitães da Areia', author: 'Jorge Amado'),
  ];

  @override
  Widget build(BuildContext context) {
    // Captura o nome do usuário para a mensagem de boas-vindas [cite: 21]
    final String nomeExibicao = ModalRoute.of(context)!.settings.arguments as String? ?? 'Visitante';

    return Scaffold(
      appBar: AppBar(
        title: Text('Controle de Leitura'),
        automaticallyImplyLeading: false, // Impede voltar para login [cite: 24]
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Bem-vindo, $nomeExibicao!', 
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Seus últimos livros lidos:', style: TextStyle(fontSize: 16)),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: livros.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.book),
                  title: Text(livros[index].title),
                  subtitle: Text(livros[index].author),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}