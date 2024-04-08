WITH novo_procedimento AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada, Data_Hora_Saida)
  SELECT
    FLOOR(RANDOM() * 100) + 1,
    CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM(),
    CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM()
  FROM generate_series(1, 100) 
  RETURNING Id_Procedimento, Num_Registro_Pac
),
novo_exame AS (
  INSERT INTO Exame (Id_Procedimento, Nome_Exame, Id_TipoExame)
  SELECT
    np.Id_Procedimento,
    'Exame Aleatório',
    FLOOR(RANDOM() * 10) + 1 
  FROM novo_procedimento np
  RETURNING *
)
SELECT * FROM novo_exame;
