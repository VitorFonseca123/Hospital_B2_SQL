WITH new_procedimento AS (
    INSERT INTO Procedimento (num_registro_pac, Data_Hora_Entrada , Data_Hora_Saida)
    VALUES (FLOOR(RANDOM() * 100) + 1, CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
    CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM())
    RETURNING Id_Procedimento
)
INSERT INTO Consulta (Data_Retorno, Motivo_Consulta)
SELECT Id_Procedimento, 
	 CURRENT_TIMESTAMP - INTERVAL '30 days' * RANDOM(),
	 'Dor de cabeça'
	 
FROM new_procedimento;

WITH new_procedimentos AS (
    INSERT INTO Procedimento (num_registro_pac, Data_Hora_Entrada, Data_Hora_Saida)
    SELECT FLOOR(RANDOM() * 100) + 1, CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
           CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM()
    FROM generate_series(1, 100)
    RETURNING Id_Procedimento
)
INSERT INTO Consulta (Data_Retorno, Motivo_Consulta)
	SELECT Id_Procedimento, 
	 CURRENT_TIMESTAMP - INTERVAL '30 days' * RANDOM(),
	 'Motivo' || FLOOR(RANDOM()*100)+1
FROM new_procedimentos;