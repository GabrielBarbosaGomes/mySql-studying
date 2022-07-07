CREAT TABLE pessoas(
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,  /* comando NOT NULL serve para obrigar a preencher o campo */
    nome VARCHAR(30) NOT NULL,                  /* comando VARCHAR() serve para setar a quantidade de caracteres a ser escrito */
    nascimento DATE                             /* comando DATE serve para setar que o campo reeberar uma data do formato americano ano/mes/dia */
)

INSERT INTO pessoas(nome, nascimento) VALUES ('Gabriel', '1998/15/08')      /* comando INSERT INTO serve para inserir dados na tabela */
INSERT INTO pessoas(nome, nascimento) VALUES ('João', '1998/06/12')         /* comando VALUES() serve para passar as informações que serao inseridas na tabela */
INSERT INTO pessoas(nome, nascimento) VALUES ('Murillo', '1998/04/25')