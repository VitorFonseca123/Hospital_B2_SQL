
Alter table Resultado
alter column Nome_Resultado type varchar(20);
alter table Resultado
DROP CONSTRAINT chaveResultado;
alter table Resultado
add  CONSTRAINT chaveResultado PRIMARY KEY(Id_resultado);
INSERT INTO Resultado (Id_Resultado, id_procedimento, Nome_Resultado, Resultado_Text)
VALUES 
    (DEFAULT,(SELECT id_procedimento FROM Exame WHERE Nome_Exame = 'Hemograma'), 'Eritrograma', 'Hemoglobina:11,8;Eritrocitos:4,26;Hematócrito:40%'),
    (DEFAULT,(SELECT id_procedimento FROM Exame WHERE Nome_Exame = 'Hemograma'), 'Leucograma', 'leucócitos:5,3;Eosinófilos:8%'),
    (DEFAULT,(SELECT id_procedimento FROM Exame WHERE Nome_Exame = 'Hemograma'), 'Plaquetas', '280/mm');
INSERT INTO Resultado (Id_Resultado, Id_Procedimento, Nome_Resultado, Resultado_Text)
VALUES 
    (DEFAULT, 216, 'Eritrograma', 'Hemoglobina:11,8;Eritrocitos:4,26;Hematócrito:40%'),
    (DEFAULT, 216, 'Leucograma', 'Leucócitos:5,3;Eosinófilos:8%'),
    (DEFAULT, 216, 'Plaquetas', '280/mm'),
    (DEFAULT, 216, 'Reticulócitos', '1%'),
    (DEFAULT, 216, 'VCM', '90,2'),
    (DEFAULT, 216, 'HCM', '30,5'),
    (DEFAULT, 216, 'RDW', '13,7'),
    (DEFAULT, 216, 'Basófilos', '2%'),
    (DEFAULT, 220, 'Segmentados', '55%'),
    (DEFAULT, 220, 'Linfócitos', '30%'),
    (DEFAULT, 220, 'Monócitos', '5%'),
    (DEFAULT, 220, 'Metamielócitos', '1%'),
    (DEFAULT, 220, 'Mielócitos', '1%'),
    (DEFAULT, 284, 'Bastonetes', '6%'),
    (DEFAULT, 284, 'Morfologia', 'Normal'),
    (DEFAULT, 284, 'Observações', 'Nenhuma'),
    (DEFAULT, 284, 'Conclusão', 'Resultado dentro dos limites normais'),
    (DEFAULT, 284, 'Assinatura', 'Médico responsável: Dr. Exemplo');

