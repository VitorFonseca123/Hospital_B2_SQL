INSERT INTO Resultado (id_Procedimento, Resultado_Text)
SELECT
    FLOOR(RANDOM()*(301-202+1))+202,
    'Resultado Aleatório ' || FLOOR(RANDOM()*100)+1 
FROM generate_series(1, 100);
