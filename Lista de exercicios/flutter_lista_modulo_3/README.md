# flutter_lista_modulo_3

Hora de praticar!

Nesta lista de exercícios você colocará em prática todo conhecimento de Flutter adquirido até agora para criar widgets personalizados. Serão três modelos que podem ser utilizados no mercado, cada um com seus contextos e requisitos. Assim, você terá a oportunidade de praticar o conteúdo sobre Widgets em contextos diversos.

Use sua criatividade! Você pode usar tanto o ElevatedButton ou o IconButton para chamar os comportamentos dos métodos. O foco aqui é na construção da interface visual, então não se preocupe em atualizar valores neste momento.

Todos os modelos nos exercícios possuem um método estático chamado getExample() que você pode usar na hora de instanciar seu widget e ver o resultado.

Bons estudos!

1) Catálogo de livros
Você faz parte da equipe desenvolvedora do aplicativo “Meu Pequeno Grimório”, um catálogo de livros lidos. O projeto está bem no começo do seu desenvolvimento e uma colega de equipe desenvolveu uma classe que representará os livros disponíveis no catálogo para registro.

class Book {
  final String title;
  final String author;
  final int pages;

  Book({
    required this.title,
    required this.author,
    required this.pages,
  });

  // Método para verificar se o livro é um "livro longo"
  bool isLongBook() {
    return pages > 300;
  }

  // Método estático para obter um exemplo da classe
  static Book getExample() {
    return Book(
      title: 'The Dart Programming Language',
      author: 'Chris Buckett',
      pages: 350,
    );
  }
}
Copiar código
Crie um widget personalizado que receba um Book e mostre todas as informações de forma agradável na tela. Inclusive, utilize o método isLongBook para mostrar a informação se o livro é ou não longo.

2) Gerenciador de contatos
Você está trabalhando em uma empresa parceira do Governo Federal e foi solicitado que você crie um módulo capaz de conseguir as informações das pessoas que logaram com a plataforma gov.br no app da sua empresa.

Você sabe que, para isso, você precisa primeiro criar um modelo que consiga armazenar os dados das pessoas, e depois um widget que consiga mostrar esses dados amigavelmente na tela. O modelo que você criou foi o seguinte:

class Person {
  String imagePath;
  String id;
  String name;
  String lastName;
  String number;
  String cpf;
  DateTime birthday;
  DateTime registeredAt;

  Person({
    required this.imagePath,
    required this.id,
    required this.name,
    required this.lastName,
    required this.number,
    required this.cpf,
    required this.birthday,
    required this.registeredAt,
  });

  // Método estático para obter um exemplo da classe
  static Person getExample() {
    return Person(
      imagePath: "assets/levi.png",
      id: "A_NICE_GENERATED_ID",
      name: "Levi",
      lastName: "Ackerman",
      number: "+5581912345678",
      cpf: "123.456.789-00",
      birthday: DateTime.parse("1846-02-10"),
      registeredAt: DateTime.now(),
    );
  }
}
Copiar código
Agora crie um widget personalizado capaz mostrar as informações das pessoas organizadamente, sem ocupar muito espaço (afinal, são muitas informações), e que dê um bom destaque para a imagem da foto, para que os colaboradores consigam rapidamente identificar cada um dos clientes.

3) Post em rede social
O Twitter caiu de novo! Você viu que agora é uma excelente oportunidade de criar a mais nova rede social brasileira! A base de toda rede social são as postagens, sabendo disso você decidiu começar estruturando dessa forma:

import 'dart:math';

class SocialPost {
  final String postId;
  final String author;
  final String content;
  final DateTime timestamp;
  final String? imagePath;
  int likes;
  List<String> comments;

  SocialPost({
    required this.postId,
    required this.author,
    required this.content,
    required this.timestamp,
    this.imagePath, // Campo opcional que pode ser nulo
    this.likes = 0,
    this.comments = const [],
  });

  // Método para curtir a postagem
  void like() {
    likes++;
  }

  // Método para adicionar um comentário
  void addComment(String comment) {
    comments.add(comment);
  }

  // Método para obter o tempo desde a postagem
  String timeAgo() {
    final duration = DateTime.now().difference(timestamp);
    if (duration.inMinutes < 60) {
      return '${duration.inMinutes} minutes ago';
    } else if (duration.inHours < 24) {
      return '${duration.inHours} hours ago';
    } else {
      return '${duration.inDays} days ago';
    }
  }

  // Método estático para obter um exemplo da classe
  static SocialPost getExample() {
    return [
      getExampleWithImage(),
      getExampleWithoutImage()
    ][Random().nextInt(2)];
  }

  static SocialPost getExampleWithImage() {
    return SocialPost(
      postId: 'POST124',
      author: 'Isa',
      content: 'Loving the new design of our app!',
      timestamp: DateTime.now().subtract(const Duration(hours: 2)),
      imagePath: 'assets/post123.png', // Exemplo com uma imagem associada
      likes: 42,
      comments: ['Looks great!', 'Can’t wait to try it!', 'Awesome work!'],
    );
  }

  static SocialPost getExampleWithoutImage() {
    return SocialPost(
      postId: 'POST123',
      author: 'Isa',
      content: "I'm working in a brand-new app. ��",
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      likes: 42,
      comments: ['Wow, interesting...', "Let me take a peek!"],
    );
  }
}
Copiar código
Agora crie um widget personalizado que representará as postagens! Há alguns desafios a serem resolvidos nesse widget:

Ao invés de mostrar o atributo timestamp ele deve mostrar o resultado de timeAgo;
É preciso ter um botão de like que chama o método like, mas não se preocupe agora com atualizar a tela;
O widget deve ter uma aparência condizente quando houver uma imagem a ser mostrada e quando for só um post textual;
Não é preciso mostrar os comentários, mas um botão com a contagem deles que no futuro possa ser usado para abrir uma página de comentários pode ser útil.
