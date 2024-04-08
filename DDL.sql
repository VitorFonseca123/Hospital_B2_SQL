CREATE TABLE IF NOT EXISTS Genero(
	Id_Genero serial,
	Nome_Genero varchar(12) NOT NULL,
	
	CONSTRAINT chaveGenero PRIMARY KEY(Id_Genero)
);
CREATE TABLE IF NOT EXISTS Paciente (
    Num_Registro serial,
    CPF numeric(11) NOT NULL UNIQUE,
    Nome_Paciente varchar(15) NOT NULL,
    Sobrenome_Paciente varchar(25) NOT NULL,
    Data_Nascimento date NOT NULL,
    GeneroPaciente int,
	
	CONSTRAINT RegistroPaciente PRIMARY KEY(Num_Registro),
	CONSTRAINT GeneroPaciente_FK FOREIGN KEY(GeneroPaciente) REFERENCES Genero(Id_Genero) 
		ON DELETE SET NULL ON UPDATE CASCADE	
);
CREATE TABLE IF NOT EXISTS Telefone (
    Num_Registro int NOT NULL,
    Num_Contato int,
	
	CONSTRAINT FK_Num_Registro_Telefone FOREIGN KEY(Num_Registro) REFERENCES Paciente(Num_Registro) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT chaveTelefone PRIMARY KEY(Num_Contato, Num_Registro)
);
CREATE TABLE IF NOT EXISTS Observacao_Medica (
    Id_Observacao serial,
    Observacao varchar(255) NOT NULL,
	Num_Registro int NOT NULL,
	
	
	CONSTRAINT FK_Num_Registro_Observacao FOREIGN KEY(Num_Registro) REFERENCES Paciente(Num_Registro) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT chaveObservacao PRIMARY KEY(Id_Observacao, Num_Registro)
);

CREATE TABLE IF NOT EXISTS Diagnostico (
    Id_Diagnostico serial,
    Diagnostico varchar(20) NOT NULL,
	Num_Registro int NOT NULL,
	
	CONSTRAINT chaveDiagnostico PRIMARY KEY(Num_Registro, Id_Diagnostico),
	CONSTRAINT FK_Num_Registro_Diagnostico FOREIGN KEY(Num_Registro) 
		REFERENCES Paciente(Num_Registro) 
		ON DELETE CASCADE ON UPDATE CASCADE
);


/*MEDICO*/

CREATE TABLE IF NOT EXISTS Especialidade(
	Id_Especialidade serial,
	Nome_Especialidade varchar(21) NOT NULL,
	Descricao_Esp varchar(255) NOT NULL,
	
	CONSTRAINT chaveEspecialidade PRIMARY KEY(Id_Especialidade)

);
CREATE TABLE IF NOT EXISTS Medico (
    COD_CRM INT,
	Estado char(2),
	Nome_Medico varchar(15) NOT NULL,
    Sobrenome_Medico varchar(25) NOT NULL,
	Especialidade1_FK int,
	Especialidade2_FK int CHECK (Especialidade2_FK <> Especialidade1_FK),
	
	CONSTRAINT chaveMedico PRIMARY KEY(COD_CRM,Estado),
    CONSTRAINT tamanhoCRM CHECK (COD_CRM >= 0 AND COD_CRM < 1000000),
	
	CONSTRAINT FK_Num_Esp1 FOREIGN KEY(Especialidade1_FK) REFERENCES Especialidade(Id_Especialidade)
		ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT FK_Num_Esp2 FOREIGN KEY(Especialidade2_FK) REFERENCES Especialidade(Id_Especialidade) 
		ON DELETE SET NULL ON UPDATE CASCADE
);
/*Material*/
CREATE TABLE IF NOT EXISTS Deposito(
	Id_Deposito serial,
	AndarDep smallint NOT NULL,
	Cheio bit NOT NULL, --valor 1 = está cheio
	
	CONSTRAINT chaveDeposito PRIMARY KEY(Id_Deposito),
	CONSTRAINT MaxAndares CHECK (AndarDep > 0 AND AndarDep <= 8)
);
CREATE TABLE IF NOT EXISTS Material(
	Id_Material serial,
	Nome_Material varchar(30),
	Marca_Registrada varchar(20),
	Lote varchar(10),
	Qtd_Atual smallint,
	
	CONSTRAINT chaveMaterial PRIMARY KEY(Id_Material)
);
CREATE TABLE IF NOT EXISTS Medicamento(
	Id_Material int,
	Nome_Generico varchar(30),
	Nome_Quimico varchar(30),
	Validade date NOT NULL,
	Grupo_Terapeutico varchar(30) NOT NULL,
	Laboratorio varchar(30) NOT NULL,
	
	CONSTRAINT chaveMedicamento PRIMARY KEY(Id_Material),
	CONSTRAINT FK_Num_Material_Medicamento FOREIGN KEY(Id_Material) REFERENCES Material(Id_Material) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Material_Esta_Em(
	Id_Material int NOT NULL,
	id_Deposito int NOT NULL,
	
	CONSTRAINT FK_Material FOREIGN KEY(Id_Material) REFERENCES Material(Id_Material) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Deposito FOREIGN KEY(Id_Deposito) REFERENCES Deposito(Id_Deposito) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

/*Procedimento*/
CREATE TABLE IF NOT EXISTS Procedimento(
	Id_Procedimento serial,
	Num_Registro_Pac int NOT NULL,
	Data_Hora_Entrada timestamp NOT NULL,
	Data_Hora_Saida timestamp,
	
	CONSTRAINT chaveProcedimento PRIMARY KEY(Id_Procedimento),
	CONSTRAINT FK_Procedimento_Paciente FOREIGN KEY(Num_Registro_Pac) REFERENCES Paciente(Num_Registro_Pac) 
		ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Utiliza_Procedimento(
	Id_Material int NOT NULL,
	Id_Procedimento int NOT NULL,
	
	CONSTRAINT FK_Material_Utiliza FOREIGN KEY(Id_Material) REFERENCES Material(Id_Material) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Procedimento_Utiliza FOREIGN KEY(Id_Procedimento) REFERENCES Procedimento(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Cirurgia(
	Id_Procedimento int,
	Nome_Cirurgia varchar(25) NOT NULL,
	Complicacao varchar(255),
	Gravidade varchar(10),
	
	CONSTRAINT chaveCirurgia PRIMARY KEY(Id_Procedimento),
	CONSTRAINT FK_Procedimento_Cirurgia FOREIGN KEY(Id_Procedimento) REFERENCES Procedimento(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE
	
);
CREATE TABLE IF NOT EXISTS Tipo_Exame(
	Id_TipoExame serial,
	Nome_TipoExame varchar(20) NOT NULL,
	
	CONSTRAINT chaveTipoExame PRIMARY KEY(Id_TipoExame)
);
CREATE TABLE IF NOT EXISTS Exame(
	Id_Procedimento int,
	Nome_Exame varchar(20) NOT NULL,
	Id_TipoExame int NOT NULL,
	
	CONSTRAINT chaveExame PRIMARY KEY(Id_Procedimento),
	CONSTRAINT FK_Procedimento_Cirurgia FOREIGN KEY(Id_Procedimento) REFERENCES Procedimento(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Exame_TipoExame FOREIGN KEY(Id_TipoExame) REFERENCES Tipo_Exame(Id_TipoExame) 
		ON DELETE SET NULL  ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Resultado(
	Id_Procedimento int NOT NULL,
	Id_Resultado serial,
	Nome_Resultado varchar(10),
	Resultado_Text varchar(50),
	
	CONSTRAINT chaveResultado PRIMARY KEY(Id_Procedimento),
	CONSTRAINT FK_Resultado_Exame FOREIGN KEY(Id_Procedimento) REFERENCES Exame(Id_Procedimento) 
		ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Internacao(
	Id_Procedimento serial,
	Motivo_Internacao varchar(100),
	Estado_Paciente varchar(8),
	
	CONSTRAINT chaveInternacao PRIMARY KEY(Id_Procedimento),
	CONSTRAINT FK_Procedimento_Internacao FOREIGN KEY(Id_Procedimento) REFERENCES Procedimento(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Enfermeiro(
	COREN varchar(10),
	Estado char(2) NOT NULL,
	Nome_Enfermeiro varchar(15) NOT NULL,
	Sobrenome_Enfermeiro varchar(20) NOT NULL,
	
	CONSTRAINT chaveEnfermeiro PRIMARY KEY(COREN)
);
CREATE TABLE IF NOT EXISTS Acompanha_Internacao(
	COREN varchar(10) NOT NULL,
	Id_Procedimento int NOT NULL,
	
	CONSTRAINT FK_Procedimento_Acompanha FOREIGN KEY(Id_Procedimento) REFERENCES Internacao(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Enfermeiro_Acompanha FOREIGN KEY(COREN) REFERENCES Enfermeiro(COREN) 
		ON DELETE CASCADE ON UPDATE CASCADE
