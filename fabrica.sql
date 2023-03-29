CREATE DATABASE workshop;

USE workshop;

CREATE TABLE imersionista(
     nome VARCHAR(50),
     curso VARCHAR(40),
     RGM INT PRIMARY KEY,
     idade INT,
     turno VARCHAR(10),
     areas VARCHAR(50)
);

CREATE TABLE instrutor(
     nome VARCHAR(50),
     curso VARCHAR(40),
     RGM INT PRIMARY KEY,
     idade INT,
     turno VARCHAR(10),
     areas VARCHAR(50)
     
);
CREATE TABLE localizacao(
   bloco VARCHAR(50),
   sala VARCHAR(40),
   estado VARCHAR(2),
   rua VARCHAR(100),
   id INT AUTO_INCREMENT PRIMARY KEY
   );
   CREATE TABLE aula(
   assunto VARCHAR(40),
   duracao INT,
   RGM_instrutor INT,
   RGM_imersionista INT,
   id_localizacao INT,
   id INT, 
   
   FOREIGN KEY(RGM_instrutor) REFERENCES instrutor(RGM),
   FOREIGN KEY(RGM_imersionista) REFERENCES imersionista(RGM),
   FOREIGN KEY(id_localizacao) REFERENCES localizacao(id),
   
   PRIMARY KEY(id, RGM_instrutor, RGM_imersionista, id_localizacao)
   );


   ##SELECT * FROM instrutor;
   ##SELECT * FROM localizacao;
   SELECT * FROM aula;
   ##SELECT * FROM imersionista;
   
   ##DROP DATABASE workshop;
   
   INSERT INTO instrutor (nome, curso ,RGM, idade, turno, areas)
   VALUES
   ('HERMANO', 'CC', 123456, 21, 'manha', 'BD'),
   ('elaine', 'SI', 123457, 22, 'noite', 'BD'),
   ('daniel', 'CC', 123458, 21, 'noite', 'BD'),
   ('julio','CC', 123459, 30, 'manha', 'BD');
   
   INSERT INTO imersionista
   (nome, curso, RGM, idade, turno, areas)
   VALUES
   ('fernando', 'CC', 1234560, 21, 'manha', 'BD'),
   ('jose', 'SI', 1234561, 22, 'noite', 'BD'),
   ('Maria', 'CC', 1234562, 21, 'noite', 'BD'),
   ('Pedro', 'CC', 1234563, 30, 'manha', 'BD');
   
   SELECT * FROM localizacao;
   
   INSERT INTO localizacao
   (bloco, sala, estado, rua)
   VALUES
   ('CT', 'LAB11', 'PB', 'RUA blalbla'),
   ('CT', 'LAB11', 'PB', 'RUA blalbla'),
   ('CT', 'LAB11', 'PB', 'RUA blalbla'),
   ('CT', 'LAB11', 'PB', 'RUA blalbla');
   
INSERT INTO aula
(assunto, duracao, RGM_instrutor, RGM_imersionista, id_localizacao, id)
VALUES
('SQL', 4, 123456, 1234560, 1, 1),
('PYTHON', 4, 123456, 1234560, 1, 2),
('POWER BI', 4, 123456, 1234560, 2, 3),
('ANALISE DE DADOS', 4, 123456, 1234560, 1, 4),
('SQL', 4, 123456, 1234560, 3, 5),
('SQL', 4, 123456, 1234560, 4, 6);


   
   

