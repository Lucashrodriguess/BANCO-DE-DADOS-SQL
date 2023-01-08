CREATE DATABASE teste1;

DROP TABLE CLIENTES; /* APAGA TANELA */ 


create TABLE Clientes(
nome VARCHAR(30),
idade int (2),
sexo char (1),
email char (30),
estado char(2)

);

use teste1;
show TABLE;/* mostra tabela*/
desc clientes; /* mostra dados da tabela clientes*/


INSERT INTO CLIENTES VALUES('joao',28,'M','JOAOA@IG.COM','mg');
INSERT INTO CLIENTES VALUES('CARLOS',30,'M','CARLOSA@IG.COM','rj');
INSERT INTO CLIENTES VALUES('ANA',35,'F','ANA@IG.COM','sp');
INSERT INTO CLIENTES VALUES('CLARA',25,'F','clara@gmail.com', 'MG');
INSERT INTO CLIENTES VALUES('JORGE',21,'M','JORGE@IG.COM','sc');
INSERT INTO CLIENTES VALUES('CELIA',19,'f','JCELIA@IG.COM','sp');

/* SELECIONAR NOME IDADE SEXO ESTADO  */
select nome, idade, sexo, estado 
from clientes;


select nome, sexo, idade, estado 
from clientes;

select * from clientes; 


+--------+-------+------+-----------------+--------+
| nome   | idade | sexo | email           | estado |
+--------+-------+------+-----------------+--------+
| joao   |    28 | M    | JOAOA@IG.COM    | mg     |
| CARLOS |    30 | M    | CARLOSA@IG.COM  | rj     |
| ANA    |    35 | F    | ANA@IG.COM      | sp     |
| CLARA  |    25 | F    | clara@gmail.com | MG     |
| JORGE  |    21 | M    | JORGE@IG.COM    | sc     |
| CELIA  |    19 | f    | JCELIA@IG.COM   | sp     |
+--------+-------+------+-----------------+--------+

/* MOSTRAR NOME E SEXO DOS CLIENTES MASCULINOS */ 
SELECT NOME, SEXO 
FROM CLIENTES 
WHERE SEXO = 'M';/* clientes do sexo masculino*/


/* MOSTRAR NOME E SEXO DOS CLIENTES FEMININO */ 
select nome, sexo 
from clientes 
where sexo ='F';


/* MOSTRAR NOME, IDADE, SEXO E ESTADO DOS CLIENTES MASCULINOS */ 
select nome, idade, sexo, estado 
from clientes 
where sexo = 'M';

+--------+-------+------+--------+
| nome   | idade | sexo | estado |
+--------+-------+------+--------+
| joao   |    28 | M    | mg     |
| CARLOS |    30 | M    | rj     |
| JORGE  |    21 | M    | sc     |
+--------+-------+------+--------+

/* MOSTRAR NOME, SEXO E IDADE DOS CLIENTES COM IDADE MENOR OU IGUAL A  25 */ 
select nome, sexo, idade 
from clientes 
where idade <= 25;
+-------+------+-------+
| nome  | sexo | idade |
+-------+------+-------+
| CLARA | F    |    25 |
| JORGE | M    |    21 |
| CELIA | f    |    19 |
+-------+------+-------+

/* SELECIONAR A QUANTIDADE DE CADASTROS DO TIPO SEXO E AGRUPAR POR CATEGORIA */ 
select sexo, count(*) 
from clientes 
group by sexo;

SELECT SEXO, NOME, NOW() AS Data_Hora 
FROM CLIENTES; /* FUNCAO NOW CRIA UM CAMPO NA TABELA PARA MOSTRAR A HORA .*/

/* MOSTRAR NOME E SEXO DOS CLIENTES COM ESTADO IGUAL A RJ */ 
SELECT NOME, SEXO 
FROM CLIENTES 
WHERE estado LIKE '%mg'; 

/* OUTRAR FORMA DE CONSEGUIR O RESULTADO UTILIZANDO O WHERE*/ 

SELECT NOME, SEXO 
FROM CLIENTES 
WHERE estado = 'mg'; 

/* ATUALIZE A IDADE DE JOAO PARA 45 ANOS */
update clientes 
set idade = 45 
where nome = 'joao';

delete from clientes 
where nome ='joao';


/* INSERINDO O CADASTRO DO CLIENTE JOAO NOVAMENTE */ 
INSERT INTO CLIENTES VALUES('joao',28,'M','JOAOA@IG.COM','mg');


