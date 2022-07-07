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

/*comando para da enter no sql*/
Ctrl + Enter