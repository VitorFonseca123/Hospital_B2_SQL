WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (1, '2024-04-07 08:00:00', '2024-04-07 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Exemplo', 'Sem complicacoes', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (2, '2024-04-07 10:30:00', '2024-04-07 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (3, '2024-04-07 13:00:00', '2024-04-07 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Teste', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (4, '2024-04-07 15:30:00', '2024-04-07 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Demonstração', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (5, '2024-04-07 09:00:00', '2024-04-07 11:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 1', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (6, '2024-04-07 11:30:00', '2024-04-07 13:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 2', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (7, '2024-04-07 14:00:00', '2024-04-07 16:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 3', 'Sem complicações', 'Baixa'
FROM novo_procedimento;


WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (8, '2024-04-07 16:30:00', '2024-04-07 18:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 4', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (9, '2024-04-07 19:00:00', '2024-04-07 21:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 5', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (10, '2024-04-08 08:00:00', '2024-04-08 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 6', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (11, '2024-04-08 10:30:00', '2024-04-08 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 7', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (12, '2024-04-08 13:00:00', '2024-04-08 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 8', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (13, '2024-04-08 15:30:00', '2024-04-08 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 9', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (14, '2024-04-08 18:00:00', '2024-04-08 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 10', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (15, '2024-04-08 20:30:00', '2024-04-08 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 11', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (16, '2024-04-09 08:00:00', '2024-04-09 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 12', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (17, '2024-04-09 10:30:00', '2024-04-09 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 13', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (18, '2024-04-09 13:00:00', '2024-04-09 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 14', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (19, '2024-04-09 15:30:00', '2024-04-09 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 15', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (20, '2024-04-09 18:00:00', '2024-04-09 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 16', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (21, '2024-04-09 20:30:00', '2024-04-09 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 17', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (22, '2024-04-10 08:00:00', '2024-04-10 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 18', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (23, '2024-04-10 10:30:00', '2024-04-10 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 19', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (24, '2024-04-10 13:00:00', '2024-04-10 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 20', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (25, '2024-04-10 15:30:00', '2024-04-10 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 21', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (26, '2024-04-10 18:00:00', '2024-04-10 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 22', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (27, '2024-04-10 20:30:00', '2024-04-10 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 23', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (28, '2024-04-11 08:00:00', '2024-04-11 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 24', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (29, '2024-04-11 10:30:00', '2024-04-11 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 25', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (30, '2024-04-11 13:00:00', '2024-04-11 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 26', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (31, '2024-04-11 15:30:00', '2024-04-11 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 27', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (32, '2024-04-11 18:00:00', '2024-04-11 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 28', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (33, '2024-04-11 20:30:00', '2024-04-11 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 29', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (34, '2024-04-12 08:00:00', '2024-04-12 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 30', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (35, '2024-04-12 10:30:00', '2024-04-12 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 31', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (36, '2024-04-12 13:00:00', '2024-04-12 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 32', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (37, '2024-04-12 15:30:00', '2024-04-12 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 33', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (38, '2024-04-12 18:00:00', '2024-04-12 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 34', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (39, '2024-04-12 20:30:00', '2024-04-12 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 35', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (40, '2024-04-13 08:00:00', '2024-04-13 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 36', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (41, '2024-04-13 10:30:00', '2024-04-13 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 37', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (42, '2024-04-13 13:00:00', '2024-04-13 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 38', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (43, '2024-04-13 15:30:00', '2024-04-13 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 39', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (44, '2024-04-13 18:00:00', '2024-04-13 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 40', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (45, '2024-04-13 20:30:00', '2024-04-13 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 41', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (46, '2024-04-14 08:00:00', '2024-04-14 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 42', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (47, '2024-04-14 10:30:00', '2024-04-14 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 43', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (48, '2024-04-14 13:00:00', '2024-04-14 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 44', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (49, '2024-04-14 15:30:00', '2024-04-14 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 45', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (50, '2024-04-14 18:00:00', '2024-04-14 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 46', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (51, '2024-04-14 20:30:00', '2024-04-14 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 47', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (52, '2024-04-15 08:00:00', '2024-04-15 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 48', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (53, '2024-04-15 10:30:00', '2024-04-15 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 49', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (54, '2024-04-15 13:00:00', '2024-04-15 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 50', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (55, '2024-04-15 15:30:00', '2024-04-15 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 51', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (56, '2024-04-15 18:00:00', '2024-04-15 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 52', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (57, '2024-04-15 20:30:00', '2024-04-15 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 53', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (58, '2024-04-16 08:00:00', '2024-04-16 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 54', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (59, '2024-04-16 10:30:00', '2024-04-16 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 55', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (60, '2024-04-16 13:00:00', '2024-04-16 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 56', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (61, '2024-04-16 15:30:00', '2024-04-16 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 57', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (62, '2024-04-16 18:00:00', '2024-04-16 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 58', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (63, '2024-04-16 20:30:00', '2024-04-16 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 59', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (64, '2024-04-17 08:00:00', '2024-04-17 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 60', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (65, '2024-04-17 10:30:00', '2024-04-17 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 61', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (66, '2024-04-17 13:00:00', '2024-04-17 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 62', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (67, '2024-04-17 15:30:00', '2024-04-17 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 63', 'Sem complicações', 'Baixa'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (68, '2024-04-17 18:00:00', '2024-04-17 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 64', 'Infecção pós-operatória', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (69, '2024-04-17 20:30:00', '2024-04-17 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 65', 'Hemorragia durante a cirurgia', 'Média'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (70, '2024-04-18 08:00:00', '2024-04-18 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 66', 'Lesão de órgão durante a cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (71, '2024-04-18 10:30:00', '2024-04-18 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 67', 'Reação alérgica ao anestésico', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (72, '2024-04-18 13:00:00', '2024-04-18 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 68', 'Complicação respiratória pós-anestesia', 'Média'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (73, '2024-04-18 15:30:00', '2024-04-18 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 69', 'Infecção no local da incisão', 'Média'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (74, '2024-04-18 18:00:00', '2024-04-18 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 70', 'Perda excessiva de sangue durante a cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (75, '2024-04-18 20:30:00', '2024-04-18 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 71', 'Infecção generalizada', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (76, '2024-04-19 08:00:00', '2024-04-19 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 72', 'Falha de órgão pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (77, '2024-04-19 10:30:00', '2024-04-19 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 73', 'Trombose venosa profunda', 'Média'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (78, '2024-04-19 13:00:00', '2024-04-19 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 74', 'Embolia pulmonar', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (79, '2024-04-19 15:30:00', '2024-04-19 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 75', 'Complicação neurológica pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (80, '2024-04-19 18:00:00', '2024-04-19 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 76', 'Fístula pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (81, '2024-04-19 20:30:00', '2024-04-19 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 77', 'Necrose de tecido pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (82, '2024-04-20 08:00:00', '2024-04-20 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 78', 'Complicação cardíaca pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (83, '2024-04-20 10:30:00', '2024-04-20 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 79', 'Sepse pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (84, '2024-04-20 13:00:00', '2024-04-20 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 80', 'Hemorragia pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (85, '2024-04-20 15:30:00', '2024-04-20 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 81', 'Complicação renal pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (86, '2024-04-20 18:00:00', '2024-04-20 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 82', 'Complicação gastrointestinal pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (87, '2024-04-20 20:30:00', '2024-04-20 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 83', 'Complicação metabólica pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (88, '2024-04-21 08:00:00', '2024-04-21 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 84', 'Complicação endócrina pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (89, '2024-04-21 10:30:00', '2024-04-21 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 85', 'Complicação dermatológica pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (90, '2024-04-21 13:00:00', '2024-04-21 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 86', 'Complicação psicológica pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (91, '2024-04-21 15:30:00', '2024-04-21 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 87', 'Complicação muscular/esquelética pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (92, '2024-04-21 18:00:00', '2024-04-21 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 88', 'Complicação vascular pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (93, '2024-04-21 20:30:00', '2024-04-21 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 89', 'Complicação otorrinolaringológica pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (94, '2024-04-22 08:00:00', '2024-04-22 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 90', 'Complicação oftalmológica pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (95, '2024-04-22 10:30:00', '2024-04-22 12:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 91', 'Complicação urológica pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (96, '2024-04-22 13:00:00', '2024-04-22 15:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 92', 'Complicação gastrointestinal pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (97, '2024-04-22 15:30:00', '2024-04-22 17:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 93', 'Complicação pulmonar pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (98, '2024-04-22 18:00:00', '2024-04-22 20:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 94', 'Complicação cardíaca pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (99, '2024-04-22 20:30:00', '2024-04-22 22:30:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 95', 'Complicação neurológica pós-cirurgia', 'Alta'
FROM novo_procedimento;

WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  VALUES (100, '2024-04-23 08:00:00', '2024-04-23 10:00:00')
  RETURNING Id_Procedimento
)
INSERT INTO cirurgia (Id_Procedimento, Nome_Cirurgia, Complicacao, Gravidade)
SELECT Id_Procedimento, 'Cirurgia de Amostra 96', 'Complicação renal pós-cirurgia', 'Alta'
FROM novo_procedimento;