CREATE TABLE IF NOT EXISTS Genero(
	Id_Genero serial,
	Nome_Genero varchar(10),
	
	CONSTRAINT chaveGenero PRIMARY KEY(Id_Genero)
);
CREATE TABLE IF NOT EXISTS Paciente (
    Num_Registro serial ,
    CPF int NOT NULL UNIQUE,
    Nome_Paciente varchar(50) NOT NULL,
    Sobrenome_Paciente varchar(50) NOT NULL,
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
CREATE TABLE IF NOT EXISTS Prontuario (
    Num_Registro int NOT NULL,
    Num_Prontuario serial,
	
	CONSTRAINT chaveProntuario PRIMARY KEY(Num_Registro, Num_Prontuario),
	CONSTRAINT FK_Num_Registro_Prontuario FOREIGN KEY(Num_Registro) REFERENCES Paciente(Num_Registro) 
		ON DELETE CASCADE ON UPDATE CASCADE
	
);

CREATE TABLE IF NOT EXISTS Observacao_Medica (
    Id_Observacao serial PRIMARY KEY,
    Observacao text NOT NULL,
    Num_Prontuario int NOT NULL,
	Num_Registro int NOT NULL,
	
	CONSTRAINT FK_Num_Prontuario_Observacao FOREIGN KEY(Num_Registro, Num_Prontuario) 
		REFERENCES Prontuario(Num_Registro, Num_Prontuario) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Diagnostico (
    Id_Diagnostico serial PRIMARY KEY,
    Diagnostico varchar(30) NOT NULL,
    Num_Prontuario int NOT NULL,
	Num_Registro int NOT NULL,
	
	CONSTRAINT FK_Num_Prontuario_Diagnostico FOREIGN KEY(Num_Registro, Num_Prontuario) 
		REFERENCES Prontuario(Num_Registro, Num_Prontuario) 
		ON DELETE CASCADE ON UPDATE CASCADE
);


/*MEDICO*/

CREATE TABLE IF NOT EXISTS Especialidade(
	Id_Especialidade serial,
	Nome_Especialidade varchar(21) NOT NULL,
	Descricao_Esp varchar(50) NOT NULL,
	
	CONSTRAINT chaveEspecialidade PRIMARY KEY(Id_Especialidade)

);
CREATE TABLE IF NOT EXISTS Medico (
    COD_CRM INT,
	Estado char(2),
	Nome_Medico varchar(50) NOT NULL,
    Sobrenome_Medico varchar(50) NOT NULL,
	Especialidade1_FK int,
	Especialidade2_FK int CHECK (Especialidade2_FK <> Especialidade1_FK),
	
	CONSTRAINT chaveMedico PRIMARY KEY(COD_CRM,Estado),
    CONSTRAINT tamanhoCRM CHECK (COD_CRM >= 0 AND COD_CRM < 1000000),
	
	CONSTRAINT FK_Num_Esp1 FOREIGN KEY(Especialidade1_FK) REFERENCES Especialidade(Id_Especialidade)
		ON DELETE SET NULL ON UPDATE CASCADE,
	CONSTRAINT FK_Num_Esp2 FOREIGN KEY(Especialidade2_FK) REFERENCES Especialidade(Id_Especialidade) 
		ON DELETE SET NULL ON UPDATE CASCADE
);
/*DEPOSITO*/
CREATE TABLE Deposito(
	Id_Deposito serial,
	AndarDep smallint NOT NULL,
	Cheio bit NOT NULL, --valor 1 = está cheio
	
	CONSTRAINT chaveDeposito PRIMARY KEY(Id_Deposito),
	CONSTRAINT MaxAndares CHECK (AndarDep > 0 AND AndarDep < 8)
);
