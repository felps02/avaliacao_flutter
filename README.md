## Controle de Leitura - App Mobile Flutter:
## Descrição do Aplicativo

Este aplicativo foi desenvolvido como parte de uma avaliação prática para a disciplina de Desenvolvimento Mobile. O objetivo principal é simular um sistema de controle de leitura, permitindo que o usuário organize e visualize seus livros lidos recentemente em uma interface mobile intuitiva.

## Objetivo
Aplicar os conceitos fundamentais do framework Flutter e da linguagem Dart, focando em:
Criação e composição de Widgets.
Gerenciamento de estado simples (setState).
Navegação entre telas com envio de parâmetros.
Organização de projeto seguindo boas práticas.

## Funcionalidades Implementadas
O aplicativo contempla o fluxo completo de interação do usuário, sem a necessidade de backend ou banco de dados:

## 1. Tela de Cadastro
Campos para inserção de Nome, Email e Senha.
Validação básica de preenchimento dos campos.
Botão para realizar o cadastro e avançar para a próxima etapa.
Navegação automática para a Tela de Login após a conclusão do cadastro.
## 2. Tela de Login
Campos para Email e Senha.
Validação de dados para garantir que os campos não fiquem vazios.
Botão "Entrar" que valida as informações e direciona o usuário para a área logada.
## 3. Tela Home
Exibição de uma mensagem de boas-vindas personalizada utilizando o nome capturado no cadastro.
Listagem dos últimos 5 livros lidos, apresentando título e autor.
Implementação da lista utilizando o widget ListView para garantir a rolagem e organização visual.
Restrição de navegação: Uma vez logado, o usuário não pode retornar para a tela de login através do botão "voltar" do dispositivo.

## Conceitos Técnicos Utilizados
Flutter & Dart: Base do desenvolvimento do projeto.

 Widgets (Stateless e Stateful): Para construção da interface e controle de componentes dinâmicos.
 
 Navigator: Utilizado para gerenciar a pilha de telas e a transição entre Cadastro, Login e Home.
 
 TextEditingController: Para capturar e manipular os dados digitados pelo usuário.
 
 Passagem de Parâmetros: Técnica utilizada para levar o nome do usuário do cadastro até a tela inicial.
 
 ## Organização do Projeto
 A estrutura de pastas foi organizada para separar as responsabilidades do código:
 
 Plaintextlib/
├── main.dart           # Ponto de entrada do app e definição de rotas

├── models/             # Modelos de dados (opcional)

└── screens/            # Telas do aplicativo (Cadastro, Login e Home)


## Instruções para Executar Localmente
Para rodar este projeto em sua máquina, siga os passos abaixo:
Certifique-se de ter o Flutter SDK instalado e configurado.
Clone este repositório:Bashgit clone (https://github.com/felps02/avaliacao_flutter)]
Acesse a pasta do projeto:Bashcd nome_do_projeto
Instale as dependências:Bashflutter pub get
Execute o aplicativo:Bashflutter run