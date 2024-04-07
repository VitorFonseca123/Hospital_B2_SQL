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

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dipirona', 'Novalgina', 'DEF789', 75)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dipirona', 'Metamizole', '2024-11-15', 'Analgésico', 'DEF Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dexametasona', 'Decadron', 'GHI012', 30)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dexametasona', 'Dexamethasone', '2024-10-20', 'Corticosteroide', 'GHI Laboratories'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Peprazol ', 'Losec', 'JKL345', 20)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Omeprazol', 'Omeprazole', '2024-09-15', 'Inib.Bomba de Prótons', 'JKL Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Ibuprofeno 600mg', 'Advil', 'ABC123', 50)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Ibuprofeno', 'Ibuprofen', '2025-05-20', 'Anti-inflamatório', 'AdvilPharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Paracetamol 500mg', 'Tylenol', 'DEF456', 100)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Paracetamol', 'Acetaminophen', '2023-12-10', 'Analgésico', 'Tylenol Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dipirona 1g', 'Novalgina', 'GHI789', 30)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dipirona', 'Metamizole', '2024-08-30', 'Analgésico', 'Novalgina Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Ondansetron 4mg', 'Zofran', 'MNO012', 10)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Ondansetron', 'Ondansetron', '2024-11-25', 'Antiemético', 'Zofran Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Simeticona 125mg', 'Luftal', 'PQR345', 25)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Simeticona', 'Simethicone', '2023-09-15', 'Antiflatulento', 'Luftal Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Amoxicilina 500mg', 'Amoxil', 'STU678', 15)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Amoxicilina', 'Amoxicillin', '2023-06-30', 'Antibiótico', 'Amoxil Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Cetirizina 10mg', 'Zyrtec', 'VWX901', 40)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Cetirizina', 'Cetirizine', '2024-03-15', 'Antialérgico', 'Zyrtec Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Sinvastatina 20mg', 'Zocor', 'YZA234', 12)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Sinvastatina', 'Simvastatin', '2025-01-20', 'Hipo-lipemiante', 'Zocor Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dexametasona 4mg', 'Decadron', 'ZAB567', 8)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dexametasona', 'Dexamethasone', '2024-07-10', 'Corticosteroide', 'Decadron Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Ranitidina 150mg', 'Zantac', 'ZCD678', 30)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Ranitidina', 'Ranitidine', '2023-08-05', 'Antagonista H2', 'Zantac Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Levotiroxina 100mcg', 'Synthroid', 'ZEF901', 20)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Levotiroxina', 'Levothyroxine', '2024-12-15', 'Hormônio Tireoidiano', 'Synthroid Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Sertralina 50mg', 'Zoloft', 'ZGH123', 25)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Sertralina', 'Sertraline', '2024-10-20', 'Antidepressivo', 'Zoloft Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Clonazepam 2mg', 'Klonopin', 'ZYX456', 10)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Clonazepam', 'Clonazepam', '2023-11-30', 'Ansiolítico', 'Klonopin Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Metformina 850mg', 'Glucophage', 'ZWX789', 18)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Metformina', 'Metformin', '2025-02-28', 'Antidiabético Oral', 'Glucophage Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Loratadina 10mg', 'Claritin', 'ZXY567', 35)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Loratadina', 'Loratadine', '2023-07-25', 'Antialérgico', 'Claritin Pharmaceuticals'
FROM new_material;

