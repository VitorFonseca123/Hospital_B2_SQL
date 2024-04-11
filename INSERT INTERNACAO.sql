WITH novos_procedimentos AS (
  INSERT INTO procedimento (Num_Registro_Pac, Data_Hora_Entrada)
  SELECT
    FLOOR(RANDOM() * 100) + 1,
    CURRENT_TIMESTAMP - INTERVAL '10 days' * RANDOM()
  FROM generate_series(1, 100)
  RETURNING Id_Procedimento, Num_Registro_Pac
)
INSERT INTO internacao (Id_Procedimento, Motivo_Internacao, Estado_Paciente)
SELECT
  np.Id_Procedimento,
  'Motivo da internação ' || ROW_NUMBER() OVER () || ' para o paciente ' || np.Num_Registro_Pac,
  CASE
    WHEN RANDOM() < 0.2 THEN 'Grave'
    WHEN RANDOM() < 0.4 THEN 'Estável'
    WHEN RANDOM() < 0.6 THEN 'Regular'
    ELSE 'Bem'
  END
FROM novos_procedimentos np;