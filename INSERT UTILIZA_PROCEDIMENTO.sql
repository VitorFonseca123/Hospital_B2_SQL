INSERT INTO Utiliza_Procedimento (Id_Material ,Id_Procedimento) 
SELECT
	FLOOR(RANDOM() * 219) + 1,
	FLOOR(RANDOM() * 400) + 1
FROM generate_series(1, 100)
