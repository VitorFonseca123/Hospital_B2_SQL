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


    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material1', 'marca1', 'lote1', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico1', 'nome_quimico1', '2023-07-25', 'Antialérgico', 'lab1'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material2', 'marca2', 'lote2', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico2', 'nome_quimico2', '2023-07-25', 'Antialérgico', 'lab2'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material3', 'marca3', 'lote3', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico3', 'nome_quimico3', '2023-07-25', 'Antialérgico', 'lab3'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material4', 'marca4', 'lote4', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico4', 'nome_quimico4', '2023-07-25', 'Antialérgico', 'lab4'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material5', 'marca5', 'lote5', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico5', 'nome_quimico5', '2023-07-25', 'Antialérgico', 'lab5'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material6', 'marca6', 'lote6', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico6', 'nome_quimico6', '2023-07-25', 'Antialérgico', 'lab6'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material7', 'marca7', 'lote7', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico7', 'nome_quimico7', '2023-07-25', 'Antialérgico', 'lab7'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material8', 'marca8', 'lote8', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico8', 'nome_quimico8', '2023-07-25', 'Antialérgico', 'lab8'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material9', 'marca9', 'lote9', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico9', 'nome_quimico9', '2023-07-25', 'Antialérgico', 'lab9'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material10', 'marca10', 'lote10', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico10', 'nome_quimico10', '2023-07-25', 'Antialérgico', 'lab10'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material11', 'marca11', 'lote11', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico11', 'nome_quimico11', '2023-07-25', 'Antialérgico', 'lab11'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material12', 'marca12', 'lote12', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico12', 'nome_quimico12', '2023-07-25', 'Antialérgico', 'lab12'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material13', 'marca13', 'lote13', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico13', 'nome_quimico13', '2023-07-25', 'Antialérgico', 'lab13'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material14', 'marca14', 'lote14', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico14', 'nome_quimico14', '2023-07-25', 'Antialérgico', 'lab14'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material15', 'marca15', 'lote15', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico15', 'nome_quimico15', '2023-07-25', 'Antialérgico', 'lab15'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material16', 'marca16', 'lote16', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico16', 'nome_quimico16', '2023-07-25', 'Antialérgico', 'lab16'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material17', 'marca17', 'lote17', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico17', 'nome_quimico17', '2023-07-25', 'Antialérgico', 'lab17'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material18', 'marca18', 'lote18', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico18', 'nome_quimico18', '2023-07-25', 'Antialérgico', 'lab18'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material19', 'marca19', 'lote19', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico19', 'nome_quimico19', '2023-07-25', 'Antialérgico', 'lab19'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material20', 'marca20', 'lote20', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico20', 'nome_quimico20', '2023-07-25', 'Antialérgico', 'lab20'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material21', 'marca21', 'lote21', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico21', 'nome_quimico21', '2023-07-25', 'Antialérgico', 'lab21'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material22', 'marca22', 'lote22', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico22', 'nome_quimico22', '2023-07-25', 'Antialérgico', 'lab22'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material23', 'marca23', 'lote23', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico23', 'nome_quimico23', '2023-07-25', 'Antialérgico', 'lab23'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material24', 'marca24', 'lote24', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico24', 'nome_quimico24', '2023-07-25', 'Antialérgico', 'lab24'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material25', 'marca25', 'lote25', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico25', 'nome_quimico25', '2023-07-25', 'Antialérgico', 'lab25'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material26', 'marca26', 'lote26', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico26', 'nome_quimico26', '2023-07-25', 'Antialérgico', 'lab26'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material27', 'marca27', 'lote27', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico27', 'nome_quimico27', '2023-07-25', 'Antialérgico', 'lab27'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material28', 'marca28', 'lote28', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico28', 'nome_quimico28', '2023-07-25', 'Antialérgico', 'lab28'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material29', 'marca29', 'lote29', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico29', 'nome_quimico29', '2023-07-25', 'Antialérgico', 'lab29'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material30', 'marca30', 'lote30', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico30', 'nome_quimico30', '2023-07-25', 'Antialérgico', 'lab30'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material31', 'marca31', 'lote31', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico31', 'nome_quimico31', '2023-07-25', 'Antialérgico', 'lab31'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material32', 'marca32', 'lote32', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico32', 'nome_quimico32', '2023-07-25', 'Antialérgico', 'lab32'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material33', 'marca33', 'lote33', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico33', 'nome_quimico33', '2023-07-25', 'Antialérgico', 'lab33'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material34', 'marca34', 'lote34', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico34', 'nome_quimico34', '2023-07-25', 'Antialérgico', 'lab34'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material35', 'marca35', 'lote35', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico35', 'nome_quimico35', '2023-07-25', 'Antialérgico', 'lab35'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material36', 'marca36', 'lote36', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico36', 'nome_quimico36', '2023-07-25', 'Antialérgico', 'lab36'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material37', 'marca37', 'lote37', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico37', 'nome_quimico37', '2023-07-25', 'Antialérgico', 'lab37'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material38', 'marca38', 'lote38', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico38', 'nome_quimico38', '2023-07-25', 'Antialérgico', 'lab38'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material39', 'marca39', 'lote39', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico39', 'nome_quimico39', '2023-07-25', 'Antialérgico', 'lab39'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material40', 'marca40', 'lote40', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico40', 'nome_quimico40', '2023-07-25', 'Antialérgico', 'lab40'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material41', 'marca41', 'lote41', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico41', 'nome_quimico41', '2023-07-25', 'Antialérgico', 'lab41'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material42', 'marca42', 'lote42', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico42', 'nome_quimico42', '2023-07-25', 'Antialérgico', 'lab42'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material43', 'marca43', 'lote43', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico43', 'nome_quimico43', '2023-07-25', 'Antialérgico', 'lab43'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material44', 'marca44', 'lote44', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico44', 'nome_quimico44', '2023-07-25', 'Antialérgico', 'lab44'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material45', 'marca45', 'lote45', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico45', 'nome_quimico45', '2023-07-25', 'Antialérgico', 'lab45'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material46', 'marca46', 'lote46', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico46', 'nome_quimico46', '2023-07-25', 'Antialérgico', 'lab46'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material47', 'marca47', 'lote47', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico47', 'nome_quimico47', '2023-07-25', 'Antialérgico', 'lab47'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material48', 'marca48', 'lote48', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico48', 'nome_quimico48', '2023-07-25', 'Antialérgico', 'lab48'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material49', 'marca49', 'lote49', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico49', 'nome_quimico49', '2023-07-25', 'Antialérgico', 'lab49'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material50', 'marca50', 'lote50', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico50', 'nome_quimico50', '2023-07-25', 'Antialérgico', 'lab50'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material51', 'marca51', 'lote51', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico51', 'nome_quimico51', '2023-07-25', 'Antialérgico', 'lab51'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material52', 'marca52', 'lote52', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico52', 'nome_quimico52', '2023-07-25', 'Antialérgico', 'lab52'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material53', 'marca53', 'lote53', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico53', 'nome_quimico53', '2023-07-25', 'Antialérgico', 'lab53'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material54', 'marca54', 'lote54', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico54', 'nome_quimico54', '2023-07-25', 'Antialérgico', 'lab54'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material55', 'marca55', 'lote55', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico55', 'nome_quimico55', '2023-07-25', 'Antialérgico', 'lab55'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material56', 'marca56', 'lote56', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico56', 'nome_quimico56', '2023-07-25', 'Antialérgico', 'lab56'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material57', 'marca57', 'lote57', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico57', 'nome_quimico57', '2023-07-25', 'Antialérgico', 'lab57'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material58', 'marca58', 'lote58', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico58', 'nome_quimico58', '2023-07-25', 'Antialérgico', 'lab58'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material59', 'marca59', 'lote59', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico59', 'nome_quimico59', '2023-07-25', 'Antialérgico', 'lab59'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material60', 'marca60', 'lote60', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico60', 'nome_quimico60', '2023-07-25', 'Antialérgico', 'lab60'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material61', 'marca61', 'lote61', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico61', 'nome_quimico61', '2023-07-25', 'Antialérgico', 'lab61'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material62', 'marca62', 'lote62', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico62', 'nome_quimico62', '2023-07-25', 'Antialérgico', 'lab62'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material63', 'marca63', 'lote63', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico63', 'nome_quimico63', '2023-07-25', 'Antialérgico', 'lab63'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material64', 'marca64', 'lote64', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico64', 'nome_quimico64', '2023-07-25', 'Antialérgico', 'lab64'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material65', 'marca65', 'lote65', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico65', 'nome_quimico65', '2023-07-25', 'Antialérgico', 'lab65'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material66', 'marca66', 'lote66', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico66', 'nome_quimico66', '2023-07-25', 'Antialérgico', 'lab66'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material67', 'marca67', 'lote67', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico67', 'nome_quimico67', '2023-07-25', 'Antialérgico', 'lab67'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material68', 'marca68', 'lote68', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico68', 'nome_quimico68', '2023-07-25', 'Antialérgico', 'lab68'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material69', 'marca69', 'lote69', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico69', 'nome_quimico69', '2023-07-25', 'Antialérgico', 'lab69'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material70', 'marca70', 'lote70', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico70', 'nome_quimico70', '2023-07-25', 'Antialérgico', 'lab70'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material71', 'marca71', 'lote71', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico71', 'nome_quimico71', '2023-07-25', 'Antialérgico', 'lab71'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material72', 'marca72', 'lote72', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico72', 'nome_quimico72', '2023-07-25', 'Antialérgico', 'lab72'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material73', 'marca73', 'lote73', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico73', 'nome_quimico73', '2023-07-25', 'Antialérgico', 'lab73'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material74', 'marca74', 'lote74', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico74', 'nome_quimico74', '2023-07-25', 'Antialérgico', 'lab74'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material75', 'marca75', 'lote75', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico75', 'nome_quimico75', '2023-07-25', 'Antialérgico', 'lab75'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material76', 'marca76', 'lote76', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico76', 'nome_quimico76', '2023-07-25', 'Antialérgico', 'lab76'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material77', 'marca77', 'lote77', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico77', 'nome_quimico77', '2023-07-25', 'Antialérgico', 'lab77'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material78', 'marca78', 'lote78', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico78', 'nome_quimico78', '2023-07-25', 'Antialérgico', 'lab78'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material79', 'marca79', 'lote79', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico79', 'nome_quimico79', '2023-07-25', 'Antialérgico', 'lab79'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material80', 'marca80', 'lote80', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico80', 'nome_quimico80', '2023-07-25', 'Antialérgico', 'lab80'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material81', 'marca81', 'lote81', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico81', 'nome_quimico81', '2023-07-25', 'Antialérgico', 'lab81'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material82', 'marca82', 'lote82', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico82', 'nome_quimico82', '2023-07-25', 'Antialérgico', 'lab82'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material83', 'marca83', 'lote83', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico83', 'nome_quimico83', '2023-07-25', 'Antialérgico', 'lab83'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material84', 'marca84', 'lote84', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico84', 'nome_quimico84', '2023-07-25', 'Antialérgico', 'lab84'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material85', 'marca85', 'lote85', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico85', 'nome_quimico85', '2023-07-25', 'Antialérgico', 'lab85'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material86', 'marca86', 'lote86', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico86', 'nome_quimico86', '2023-07-25', 'Antialérgico', 'lab86'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material87', 'marca87', 'lote87', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico87', 'nome_quimico87', '2023-07-25', 'Antialérgico', 'lab87'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material88', 'marca88', 'lote88', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico88', 'nome_quimico88', '2023-07-25', 'Antialérgico', 'lab88'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material89', 'marca89', 'lote89', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico89', 'nome_quimico89', '2023-07-25', 'Antialérgico', 'lab89'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material90', 'marca90', 'lote90', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico90', 'nome_quimico90', '2023-07-25', 'Antialérgico', 'lab90'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material91', 'marca91', 'lote91', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico91', 'nome_quimico91', '2023-07-25', 'Antialérgico', 'lab91'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material92', 'marca92', 'lote92', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico92', 'nome_quimico92', '2023-07-25', 'Antialérgico', 'lab92'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material93', 'marca93', 'lote93', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico93', 'nome_quimico93', '2023-07-25', 'Antialérgico', 'lab93'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material94', 'marca94', 'lote94', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico94', 'nome_quimico94', '2023-07-25', 'Antialérgico', 'lab94'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material95', 'marca95', 'lote95', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico95', 'nome_quimico95', '2023-07-25', 'Antialérgico', 'lab95'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material96', 'marca96', 'lote96', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico96', 'nome_quimico96', '2023-07-25', 'Antialérgico', 'lab96'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material97', 'marca97', 'lote97', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico97', 'nome_quimico97', '2023-07-25', 'Antialérgico', 'lab97'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material98', 'marca98', 'lote98', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico98', 'nome_quimico98', '2023-07-25', 'Antialérgico', 'lab98'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material99', 'marca99', 'lote99', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico99', 'nome_quimico99', '2023-07-25', 'Antialérgico', 'lab99'
    FROM new_material;
    

    WITH new_material AS (
        INSERT INTO Material (Nome_Material, Marca_Registrada, Lote, Qtd_Atual)
        VALUES ('Nome_Material100', 'marca100', 'lote100', 50)
        RETURNING Id_Material
    )
    INSERT INTO Medicamento (Id_Material, Nome_Generico, Nome_Quimico, Validade, Grupo_Terapeutico, Laboratorio)
    SELECT Id_Material, 'nome_generico100', 'nome_quimico100', '2023-07-25', 'Antialérgico', 'lab100'
    FROM new_material;
    


