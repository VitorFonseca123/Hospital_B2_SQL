WITH new_procedimento AS (
    INSERT INTO Procedimento (num_registro_pac, Data_Hora_Entrada , Data_Hora_Saida)
    VALUES (FLOOR(RANDOM() * 100) + 1, CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
    CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM())
    RETURNING Id_Procedimento
)
INSERT INTO Cirurgia_Realizada (Id_Procedimento, Complicacao, Gravidade, Id_Cirurgia)
SELECT Id_Procedimento, 'Sem complicacoes', 'Baixa', FLOOR(RANDOM() * 24) + 1
FROM new_procedimento;
WITH new_procedimentos AS (
    INSERT INTO Procedimento (num_registro_pac, Data_Hora_Entrada, Data_Hora_Saida)
    SELECT FLOOR(RANDOM() * 100) + 1, CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
           CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM()
    FROM generate_series(1, 100)
    RETURNING Id_Procedimento
)
INSERT INTO Cirurgia_Realizada (Id_Procedimento, Complicacao, Gravidade, Id_Cirurgia)
	SELECT np.Id_Procedimento, 
	'Complicação' || FLOOR(RANDOM()*100)+1,
	'Grav.' || FLOOR(RANDOM()*100)+1
	,FLOOR(RANDOM() * 24) + 1
FROM new_procedimentos np;
