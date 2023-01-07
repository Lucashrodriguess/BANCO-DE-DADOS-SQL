create DATABASE Livraria;

use livraria;

create TABLE livros(
nome_Livro varchar (100),
Nome_Autor VARCHAR(100),
Sexo char (1),
Num_Paginas int(5),
Editora varchar(100),
valor float(10,2),
Estado  CHAR(2),
ano_Publicado int(4)
);

INSERT into livros (Nome_livro, Nome_Autor,sexo, num_Paginas, editora, valor, estado, ano_Publicado) VALUES 
('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009),
('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018),
('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008),
('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018),
('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019),
('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016),
('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015),
('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011),
('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018),
('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);


show TABLEs;
desc livros;

select Nome_livro, num_Paginas from livros;


/*1 – Trazer todos os dados.*/

select * from livros;

/*2 – Trazer o nome do livro e o nome da editora*/

select Nome_livro, Editora from livros;

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/

select Nome_livro, estado from livros where sexo = 'M';

select Nome_livro, estado, Nome_Autor from livros where sexo ='M';

/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/

select nome_Livro, Num_Paginas from livros where sexo ='F';

select nome_Livro, Num_Paginas, Nome_Autor from livros where sexo = 'F';

/*5 – Trazer os valores dos livros das editoras de São Paulo.*/

select valor from livros where estado = 'SP';

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/

select Nome_Autor, sexo, estado from livros where SEXO = 'M' AND (estado = 'SP' OR estado = 'RJ');


/* testes  ano maior que 2015  e  mais de 100 paginas sexo m */

select nome_autor, sexo, estado, editora, ano_Publicado from livros where ano_Publicado >= 2015 AND (num_paginas >=100 and sexo ='M');

select max(valor)from livros;

/* teste and e like  selecionar nome do autor sexo e estado do sexo f e estado rj ou sp*/ 
select nome_autor, sexo, estado 
from livros 
where sexo ='F' and (estado like '%RJ' or estado like '%SP');
 /* outra forma de fazer 
select nome_autor, sexo, estado 
from livros 
where sexo ='F' and (estado = '%RJ' or estado = '%SP'); */ 

/* COUNT conta a quantidade de registro dentro da tabela */ 

SELECT COUNT(*) AS "Quantidade de Registros da Tab. Livros" FROM livros;


/*group by ele faz agurpamento neste caso quero a quantidade de registros  sexo dividindo a quantodade de M e F */ 
SELECT SEXO, COUNT(*) "Quantidade" FROM livros GROUP BY SEXO; 
/*  resultado 

+------+------------+
| SEXO | Quantidade |
+------+------------+
| F    |          4 |
| M    |          6 |
+------+------------+

/* quantidade de editoras e quantos livros publicados em cada editora */ 
select editora, count(*) "Quantidade" from livros GROUP by editora;

/* resultado impresso 
+-------------+------------+
| editora     | Quantidade |
+-------------+------------+
| Atlas       |          2 |
| Addison     |          1 |
| Beta        |          2 |
| Bubba       |          1 |
| Insignia    |          2 |
| Larson      |          1 |
| Continental |          1 |
+-------------+------------+ */ 

