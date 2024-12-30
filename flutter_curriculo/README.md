# flutter_curriculo

1) Adicione sua foto e imagens dos projetos
Antes de poder utilizar imagens no nosso projeto, precisamos importá-las para a pasta assets e declará-las no pubspec.yaml. Então esse é o momento, escolha sua melhor foto, tire print do seu portfólio, e torne tudo isso disponível no seu projeto Flutter.

2) Crie modelos e preencha suas informações
Crie três modelos de dados (classes de dados) que serão usados na construção do seu currículo digital:

Projeto (representa um projeto no seu portfólio):
Caminho da imagem: texto que guarda o caminho relativo da imagem do projeto;
Título: texto com o título do projeto; -** Descrição:** texto com a descrição detalhada do projeto;
Experiência (representa tanto sua experiência educacional, quanto profissional)
Título: texto que representa a experiência (ex.: “Ensino Médio” ou “Analista de Dados”);
Organização: texto que representa onde se deu essa experiência;
Observação: texto (que pode ser nulo) para alguma observação extra;
Data de Início: objeto de data que informa a data de começo da experiência;
Data de Fim: objeto de data (que pode ser nulo) que informa a data de fim da experiência. Se for nulo, quer dizer que a pessoa ainda está nessa experiência;
Currículo (representa seu currículo, será usado para compor a tela)
Nome: texto que espera seu nome completo;
Caminho da imagem: texto que guarda o caminho da sua imagem de perfil;
Lista de experiências educacionais: uma lista de objetos da classe de experiências contendo apenas suas experiências educacionais;
Lista de experiências profissionais: uma lista de objetos da classe de experiências contendo apenas suas experiências profissionais;
Lista de projetos: lista de objetos da classe de projetos;
Depois de criar as três classes, em um arquivo separado, crie uma instância (objeto) da classe de “Currículo” com seus dados (não precisa ser os reais, pode ser fictício). Usaremos esse objeto mais para frente para criar a tela.

Uma dica importante, que não é obrigatória, é nomear tudo em inglês, tanto para manter a uniformidade linguística, já que o Dart é escrito em inglês, quanto para evitar problemas com acentuação e caracteres latinos.

3) Crie a tela principal
Sua próxima tarefa é criar a tela principal. Vou deixar algumas dicas:

Crie um novo arquivo para separar a tela, e não esqueça de chamá-la na main.dart;
Essa tela deve receber um objeto genérico que representa o currículo;
Você pode colocar colunas dentro de colunas;
No windows, você pode abrir o menu de emojis com ctrl + .;
Use List.generate(lenght, builder) para gerar uma lista de widgets no children do Column;
