CREAT TABLE pessoas(
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

INSERT INTO pessoas(nome, nascimento) VALUES ('Gabriel', '1998/15/08')
INSERT INTO pessoas(nome, nascimento) VALUES ('João', '1998/06/12')
INSERT INTO pessoas(nome, nascimento) VALUES ('Murillo', '1998/04/25')