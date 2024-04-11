WITH new_procedimentos AS (
    INSERT INTO Procedimento (num_registro_pac, Data_Hora_Entrada)
    SELECT FLOOR(RANDOM() * 100) + 1, CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM()
    FROM generate_series(1, 100)
    RETURNING Id_Procedimento
)
INSERT INTO Exame_Realizado (Id_Procedimento, Id_exame)
	SELECT np.Id_Procedimento, 
	FLOOR(RANDOM() * 100) + 1
FROM new_procedimentos np;