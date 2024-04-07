WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Paracetamol', 'Tylenol', 'ABC123', 100)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Paracetamol', 'Acetaminophen', '2025-01-01', 'Analgésico', 'ABC Laboratories'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Ibuprofeno', 'Advil', 'XYZ456', 50)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Ibuprofeno', 'Ibuprofen', '2024-12-01', 'Anti-inflamatório', 'XYZ Pharmaceuticals'
FROM new_material;

WITH new_material1 AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dipirona', 'Novalgina', 'DEF789', 75)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dipirona', 'Metamizole', '2024-11-15', 'Analgésico', 'DEF Pharmaceuticals'
FROM new_material1;

WITH new_material2 AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dexametasona', 'Decadron', 'GHI012', 30)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dexametasona', 'Dexamethasone', '2024-10-20', 'Corticosteroide', 'GHI Laboratories'
FROM new_material2;

WITH new_material3 AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Peprazol ', 'Losec', 'JKL345', 20)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Omeprazol', 'Omeprazole', '2024-09-15', 'Inib.Bomba de Prótons', 'JKL Pharmaceuticals'
FROM new_material3;

