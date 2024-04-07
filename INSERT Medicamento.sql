WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Paracetamol', 'Tylenol', 'ABC123', 100)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Paracetamol', 'Acetaminophen', '2025-01-01', 'Analgésico', 'ABCLaboratories'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Ibuprofeno', 'Advil', 'XYZ456', 50)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Ibuprofeno', 'Ibuprofen', '2024-12-01', 'Anti-inflamatório', 'XYZFarma'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dipirona', 'Novalgina', 'DEF789', 75)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dipirona', 'Metamizole', '2024-11-15', 'Analgésico', 'DEFPharma'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dexametasona', 'Decadron', 'GHI012', 30)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dexametasona', 'Dexamethasone', '2024-10-20', 'Corticosteroide', 'GHILab'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Peprazol ', 'Losec', 'JKL345', 20)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Omeprazol', 'Omeprazole', '2024-09-15', 'Inib.Bomba de Prótons', 'JKLFarma'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Ibuprofeno 600mg', 'Advil', 'ABC123', 50)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Ibuprofeno', 'Ibuprofen', '2025-05-20', 'Ant-inflama', 'Adceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dipirona', 'Novalgina', 'GHI789', 30)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dipirona', 'Metamizole', '2024-08-30', 'Analgésico', 'Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Ondansetron', 'Zofran', 'MNO012', 10)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Ondansetron', 'Ondansetron', '2024-11-25', 'Antiemético', 'Pharmaceuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Simeticona', 'Luftal', 'PQR345', 25)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Simeticona', 'Simethicone', '2023-09-15', 'Antiflatulento', 'Luftal Pharma'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Amoxicilina', 'Amoxil', 'STU678', 15)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Amoxicilina', 'Amoxicillin', '2023-06-30', 'Antibiótico', 'Amoxticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Cetirizina', 'Zyrtec', 'VWX901', 40)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Cetirizina', 'Cetirizine', '2024-03-15', 'Antialérgico', 'Zyrtec'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Sinvastatina', 'Zocor', 'YZA234', 12)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Sinvastatina', 'Simvastatin', '2025-01-20', 'Hipo-lipemiante', 'Zocticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Dexametasona', 'Decadron', 'ZAB567', 8)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Dexametasona', 'Dexamethasone', '2024-07-10', 'Corticosteroide', 'Decadicals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Ranitimed', 'Zantac', 'ZCD678', 30)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Ranitidina', 'Ranitidine', '2023-08-05', 'AntagonistaH2', 'Zanteuticals'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Levotimed', 'Synthroid', 'ZEF901', 20)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Levotiroxina', 'Levothyroxine', '2024-12-15', 'Hormônio Tireoidiano', 'Synthroid Pharma'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Sertralina', 'Zoloft', 'ZGH123', 25)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Sertralina', 'Sertraline', '2024-10-20', 'Antidepressivo', 'ZoloftPharma'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Clonazepam', 'Klonopin', 'ZYX456', 10)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Clonazepam', 'Clonazepam', '2023-11-30', 'Ansiolítico', 'Klonop'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Metformed', 'Glucophage', 'ZWX789', 18)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Metformina', 'Metformin', '2025-02-28', 'Antidiabético', 'GlucopPharma'
FROM new_material;

WITH new_material AS (
    INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
    VALUES ('Loratadina', 'Claritin', 'ZXY567', 35)
    RETURNING Id_Material
)
INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
SELECT Id_Material, 'Loratadina', 'Loratadine', '2023-07-25', 'Antialérgico', 'ClartPharm'
FROM new_material;

