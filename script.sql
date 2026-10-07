
 /*CREATE DATABASE atv_senai; -- criar 
 USE atv_senai; -- usar banco de dados

 USE atv_senai;
 CREATE TABLE cliente (
    ID_CLIENTE INT PRIMARY KEY,
    NOME_CLIENTE VARCHAR(100) NOT NULL,
    EMAIL_CLIENTE VARCHAR(100) NOT NULL,
    TELEFONE_CLIENTE VARCHAR(15) NOT NULL
);

 USE atv_senai;
 CREATE TABLE produto (
    ID_PRODUTO INT PRIMARY KEY,
    PRODUTO VARCHAR(100) NOT NULL,
    PRECO_PRODUTO TEXT NOT NULL
 );

 USE atv_senai;
 CREATE TABLE vendas ( -- tabela vendas
    ID_VENDA INT PRIMARY KEY,
    ID_CLIENTE INT NOT NULL,
    ID_PRODUTO INT NOT NULL,
    QUANTIDADE_VENDA INT NOT NULL,
    DATA_VENDA DATE NOT NULL
 );

 
USE atv_senai;
 INSERT INTO cliente (ID_CLIENTE, NOME_CLIENTE, EMAIL_CLIENTE, TELEFONE_CLIENTE) 
 VALUES(1, 'João Silva', 'joao.silva@email.com', '11999999999');  


 USE atv_senai;
 INSERT INTO cliente (ID_CLIENTE, NOME_CLIENTE, EMAIL_CLIENTE, TELEFONE_CLIENTE) 
 VALUES(2, ' Silva joao', 'joao.silva@email.com', '11999999999');  


USE atv_senai;
 INSERT INTO cliente (ID_CLIENTE, NOME_CLIENTE, EMAIL_CLIENTE, TELEFONE_CLIENTE) 
 VALUES(3, 'matheus Silva', 'joao.silva@email.com', '11999999555');  


---------------------------------------------------------------------------------------------------------------------

USE atv_senai;
INSERT INTO produto (ID_PRODUTO, PRODUTO, PRECO_PRODUTO)
VALUES(1, 'Notebook', 'R$ 3.000,00')

use atv_senai;
INSERT INTO produto (ID_PRODUTO, PRODUTO, PRECO_PRODUTO)
VALUES(2, 'Smartphone', 'R$ 2.000,00')

use atv_senai;
INSERT INTO produto (ID_PRODUTO, PRODUTO, PRECO_PRODUTO)
VALUES(3, 'Tablet', 'R$ 1.500,00');  
------------------------------------------------------------------------------------------------------------------------





USE atv_senai;
INSERT INTO vendas (ID_VENDA, ID_CLIENTE, ID_PRODUTO, QUANTIDADE_VENDA, DATA_VENDA)
VALUES(1, 1, 1, 2, '2024-06-  15');  

USE atv_senai;
INSERT INTO vendas (ID_VENDA, ID_CLIENTE, ID_PRODUTO, QUANTIDADE_VENDA, DATA_VENDA)
VALUES(2, 3, 2, 2, '2022-01-  13');  

USE atv_senai;
INSERT INTO vendas (ID_VENDA, ID_CLIENTE, ID_PRODUTO, QUANTIDADE_VENDA, DATA_VENDA)
VALUES(3, 3, 1, 1, '2026-09- 3');  
*/


CREATE DATABASE atv_biblioteca; 

CREATE TABLE alunos(
    ID_ALUNO INT PRIMARY KEY,
    NOME_ALUNO VARCHAR(100) NOT NULL,
    EMAIL_ALUNO VARCHAR(100) NOT NULL,
    TELEFONE_ALUNO VARCHAR(15) NOT NULL,
    CURSO VARCHAR(100) NOT NULL
);
USE atv_biblioteca;
INSERT INTO alunos (ID_ALUNO, NOME_ALUNO, EMAIL_ALUNO, TELEFONE_ALUNO, CURSO)
VALUES(1, 'Ana de Costa', 'ana.costa@email.com', '11987654321', 'Sistemas de Informação');



USE atv_biblioteca;
INSERT INTO alunos (ID_ALUNO, NOME_ALUNO, EMAIL_ALUNO, TELEFONE_ALUNO, CURSO)
VALUES(2, 'Carlos Souza', 'carlos.souza@email.com', '11987654322', 'Administração');



USE atv_biblioteca;
INSERT INTO alunos (ID_ALUNO, NOME_ALUNO, EMAIL_ALUNO, TELEFONE_ALUNO, CURSO)
VALUES(3, 'Mariana Lima', 'mariana.lima@email.com', '11987654323', 'Ciência da Computação');

------------------------------------------------------------------------------------

CREATE TABLE livros(
    ID_LIVRO INT PRIMARY KEY,
    TITULO_LIVRO VARCHAR(100) NOT NULL UNIQUE,
    DATA_IMPRESTIMO DATE NOT NULL,
    DATA_DEVOLUCAO DATE
);

INSERT INTO livros (ID_LIVRO, TITULO_LIVRO, DATA_IMPRESTIMO,DATA_DEVOLUCAO)
VALUES(1, 'O Senhor dos Anéis', '2023-04-01', '2023-01-14');

INSERT INTO livros (ID_LIVRO, TITULO_LIVRO, DATA_IMPRESTIMO, DATA_DEVOLUCAO)
VALUES(2, 'Harry Potter e a Pedra Filosofal', '2023-02-01', '2023-02-17');

INSERT INTO livros (ID_LIVRO, TITULO_LIVRO, DATA_IMPRESTIMO, DATA_DEVOLUCAO)
VALUES(3, 'O conto de Aia', '2023-03-01', '2023-03-15');
-------------------------------------------------------------------------------------------------