INSERT INTO  Prescricao (Id_Procedimento, Data_Validade, Recomendacao_Medica, Nome_Medicamento_Presc)
SELECT
	FLOOR(RANDOM()*(402-302+1))+302,
	CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
	'Recomendacao ' || FLOOR(RANDOM()*100)+1,
	'Medicamento ' || FLOOR(RANDOM()*100)+1
FROM generate_series(1, 100)
