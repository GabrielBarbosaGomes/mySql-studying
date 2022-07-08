/*criando tabela sql*/

CREAT TABLE pessoas(                             /* comando CREAT TABLE e na frente o nome da tabela, serve para criar a tabela */
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,  /* comando NOT NULL serve para obrigar a preencher o campo */ /* comando PRIMARY KEY serve para garantir que o ID sera o primeiro item da tabela e que para cara item adicionado tera um id expecífico para ele*/
    nome VARCHAR(30) NOT NULL,                  /* comando VARCHAR() serve para setar a quantidade de caracteres a ser escrito */
    nascimento DATE                            /* comando DATE serve para setar que o campo reeberar uma data do formato americano ano/mes/dia */
)

INSERT INTO pessoas(nome, nascimento) VALUES ('Gabriel', '1998/15/08')      /* comando INSERT INTO serve para inserir dados na tabela */
INSERT INTO pessoas(nome, nascimento) VALUES ('João', '1998/06/12')         /* comando VALUES() serve para passar as informações que serao inseridas na tabela */
INSERT INTO pessoas(nome, nascimento) VALUES ('Murillo', '1998/04/25')

/* pesquisando dados na tabela */

SELECT nome FROM pessoas;
SELECT nome, nascimento FROM pessoas;

/* Atualizando dados na tabela*/

UPDATE pessoas Set nome = 'João Henrique' WHERE id = 2;

/*Deletando dados da tabela*/

DELETE FROM pessoas WHERE id= 2; /* como boa pratica, primeiro usa o SELECT * FROM pessoas WHERE id= 2 para validar se é esse mesmo que voce quer deletar para depois da o DELETE FROM*/

/*Ordenador de dados*/

SELECT * FROM pessoas ORDER BY nome /* nesse formato ele retonaria a lista de nomes da tabela em orde alfabetica se fosse numeros seria em ordem crescente*/
SELECT * FROM pessoas ORDER BY nome DESC /* nesse formado retorna em ordem decrescente*/

/* Adcionando uma coluna nova na tabela*/

ALTER TABLE `pessoas` ADD `genero` VARCHAR(1) NOT NULL AFTER `nascimento`;

/* selecionando por genero*/

SELECT COUNT(ID), genero FROM pessoas GROUP BY genero; /* nesse caso vai me passar a quantidade de id que cada genero possui*/

/* juntar tabelas */

SELECT * FROM videos_canais JOIN videos /* nesse caso o JOIN faz a tabela videos_canais juntar com a tabela videos */
SELECT * FROM videos_canais JOIN videos ON videos_canais.fk_video = videos.id_video /* nesse caso com o uso do ON, sera comparado a coluna fk_video da tabela videos_canais com a coluna id_videos da tabela videos, porem viran junto o restanters das informações das tabelas em que os id forem iguais */
SELECT * FROM videos_canais AS vc JOIN videos AS v ON vc.fk_video = v.id_video /* nesse formado com o uso do AS podemos abreviar o nome das tabelas*/
JOIN canais AS c ON vc.fk_canal = id_canal

SELECT v.nome_video, v.autor_video, c.nome_canal FROM videos_canais AS vc JOIN videos AS v ON vc.fk_video = v.id_video/* nesse formato, a busca vem selecionada e aparecera somente as colunas informadas */
JOIN canais AS c ON vc.fk_canal = id_canal
SELECT v.nome_video, v.autor_video, c.nome_canal FROM videos_canais AS vc RIGHT OUTER JOIN videos AS v ON vc.fk_video = v.id_video/* JOIN ou INNER JOIN nao apresentara os itens que nao tem relacionamento, para isso se usa o OUTER JOIN informando a direção de onde vai ficar a informação que tem relacionamento null, left||right */

/* usando Union*/

SELECT * FROM v.id_video, v.nome_video FROM videos AS v LEFT OUTER JOIN videos_canais AS vc ON v.id_video = vc.fk_video /* A UNION precisa que as colunas das tabelas unidas sejam de quantidade iguais */
UNION
SELECT * FROM c.id_canal, c.nome_canal FROM videos_canais AS vc RIGHT OUTER JOIN canais AS c ON vc.fk_canal = c.id_canal 

/* Inserindo dados em tabela relacionada*/

SELECT * FROM videos_canais JOIN videos ON videos_canais.fk_video = videos.id_video
Join canais ON videos_canais.fk_canal = canais.id_canal

/* consultas em items específicos de tabelas relacionadas*/

SELECT * FROM videos_canais JOIN videos ON videos_canais.fk_video = videos.id_video
Join canais ON videos_canais.fk_canal = canais.id_canal
WHERE canais.id_canal = 2 /*ele apresentara somente os dados que o id for igual a 2 das tabelas relacionadas*/

/*comando para da enter no sql*/
Ctrl + Enter