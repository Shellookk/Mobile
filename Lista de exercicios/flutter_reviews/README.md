# flutter_reviews

1) Crie um novo projeto Flutter:
Utilize o comando aprendido para criar um novo projeto Flutter. Dê o nome que achar mais interessante para o projeto, eu recomendo flutter_reviews;

2) Crie o modelo de “review” e alguns exemplos:
Crie um arquivo com uma classe do tipo “model” que represente uma review, que os atributos serão:

Nome (textual);
Estrelas (inteiro);
Review (textual);
Data (datetime);
Depois, crie uma função que, dada uma lista de reviews retorna uma aleatória. Preencha essa lista com filmes e séries do seu interesse! :D

3) Crie uma tela que receba o modelo “review”:
Agora chegou a hora de criar nossa tela.

Para isso, siga os passos que você aprendeu no curso até que a tela comporte uma coluna.

Lembre-se que essa tela precisa estar preparada para receber uma review pelo seu construtor, portanto, utilize seus conhecimentos de Orientação à Objeto para tal.

4) Crie os elementos na tela de review:
Agora chegou a hora de criar a tela de review, sempre levando em consideração os atributos do objeto Review recebido:

Na coluna, comece construindo um texto com o título. Ele deverá mostrar além do nome do filme ou série, o ano entre parênteses.
Decore esse texto usando o atributo style que recebe um TextStyle de Text para que ele tenha tamanho 18 e peso negrito.
Para criar a linha com várias estrelas, você utilizará uma Row, que é um widget idêntico ao Column só que, ao invés de agrupar seus filhos na vertical, agrupa na horizontal;
Utilize também seu conhecimento dos métodos de List para gerar uma lista de widgets que será passada para o children de Row;
Finalizando as informações à serem mostradas sobre a review, adicione textos para a data e para a própria review.
Formate e estilize como achar interessante, para a data, recomendo pegar apenas os 10 primeiros caracteres para evitar a informação de hora.
5) Configure a main para mostrar uma review
Por fim, na tela inicial, crie um ReviewApp que inicializa a aplicação e chama a ReviewScreen. Utilize a função que devolve uma review aleatória para decidir a review da inicialização atual.

Parte dois:

Nessa aula, aprendemos sobre os widgets agregadores, que permitem agrupar e organizar outros widgets de maneira eficiente.

Com base nesse novo conhecimento, que tal um desafio? Você topa?

Se você fez toda a lista de exercícios da aula 1, deve ter percebido que o projeto não ficou super alinhado e precisa de alguns ajustes. Que tal fazer essa organização agora que já tem os conhecimentos necessários sobre estilizações e alinhamentos?