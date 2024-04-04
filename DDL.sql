CREATE TABLE IF NOT EXISTS Genero(
	Id_Genero serial,
	Nome_Genero varchar(10)
	
);
CREATE TABLE IF NOT EXISTS Paciente (
    Num_Registro serial ,
    CPF int NOT NULL UNIQUE,
    Nome_Paciente varchar(50) NOT NULL,
    Sobrenome_Paciente varchar(50) NOT NULL,
    Data_Nascimento date NOT NULL,
    GeneroPaciente varchar(10)
	
	CONSTRAINT RegistroPaciente PRIMARY KEY(Num_Registro),
	CONSTRAINT GeneroPaciente_FK FOREIGN KEY(GeneroPaciente) REFERENCES Genero(Id_Genero) 
		ON DELETE SET NULL ON UPDATE CASCADE	
);
CREATE TABLE IF NOT EXISTS Telefone (
    Num_Registro int NOT NULL,
    Num_Contato int,
	
	CONSTRAINT FK_Num_Registro_Telefone FOREIGN KEY(Num_Registro) REFERENCES Paciente(Num_Registro) 
		ON DELETE CASCADE ON UPDATE CASCADE	
	CONSTRAINT chaveTelefone PRIMARY KEY(Num_Contato, Num_Registro),
);
CREATE TABLE IF NOT EXISTS Prontuario (
    Num_Registro int NOT NULL,
    Num_Prontuario serial,
	
	CONSTRAINT FK_Num_Registro_Prontuario FOREIGN KEY(Num_Registro) REFERENCES Paciente(Num_Registro) 
		ON DELETE CASCADE ON UPDATE CASCADE	
	CONSTRAINT chaveProntuario PRIMARY KEY(Num_Prontuario, Num_Registro),
);

CREATE TABLE IF NOT EXISTS Observacao_Medica (
	Id_Observacao serial,
    Observacao text NOT NULL,
    Num_Prontuario int NOT NULL,
	
	CONSTRAINT chaveObservacao PRIMARY KEY(Id_Observacao),
	CONSTRAINT FK_Num_Prontuario_Observacao FOREIGN KEY(Num_Prontuario) REFERENCES Prontuario(Num_Prontuario) 
		ON DELETE CASCADE ON UPDATE CASCADE	
);
CREATE TABLE IF NOT EXISTS Diagnostico (
	Id_Diagnostico serial,
    Diagnostico varchar(30) NOT NULL, /*acho que ta grande*/
    Num_Prontuario int NOT NULL,
	
	CONSTRAINT chaveDiagnostico PRIMARY KEY(Id_Diagnostico),
	CONSTRAINT FK_Num_Prontuario_Observacao FOREIGN KEY(Num_Prontuario) REFERENCES Prontuario(Num_Prontuario) 
		ON DELETE CASCADE ON UPDATE CASCADE	
);


/*MEDICO*/

/*CREATE DOMAIN EspecialidadesDomain AS VARCHAR(21)
    CHECK (VALUE IN ('Cardiologia', 'Dermatologia', 'Pediatria', 'Psiquiatria', 'Ortopedia', 'Ginecologia', 'Urologia',
                      'Oftalmologia', 'Otorrinolaringologia', 'Endocrinologia', 'Neurologia', 'Cirurgia Geral',
                      'Cirurgia Plástica', 'Cirurgia Vascular', 'Radiologia', 'Anestesiologia', 'Oncologia',
                      'Gastroenterologia', 'Hematologia', 'Infectologia', 'Nefrologia', 'Reumatologia'));
*/
CREATE TABLE IF NOT EXISTS Especialidade(
	

);
CREATE TABLE IF NOT EXISTS Medico (
    COD_CRM INT,
	Estado char(2),
	Nome_Medico varchar(50) NOT NULL,
    Sobrenome_Medico varchar(50) NOT NULL,
	Especialidade1 EspecialidadesDomain NOT NULL,
	Especialidade2 EspecialidadesDomain CHECK (Especialidade2 <> Especialidade1),
	
	CONSTRAINT chaveMedico PRIMARY KEY(COD_CRM,Estado),
    CONSTRAINT tamanhoCRM CHECK (COD_CRM >= 0 AND COD_CRM < 1000000)
	
	
);
/*DEPOSITO*/
CREATE TABLE Deposito(
	Id_Deposito serial,
	AndarDep smallint NOT NULL,
	Cheio bit NOT NULL, --valor 1 = está cheio
	
	CONSTRAINT chaveDeposito PRIMARY KEY(Id_Deposito),
	CONSTRAINT MaxAndares CHECK (AndarDep > 0 AND AndarDep < 8)
);
CREATE TABLE Material(
	Id_Material,
	Marca_Registrada,
	Lote,
	Qtd_Atual,
	
	
);