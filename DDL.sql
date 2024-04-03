  CREATE DOMAIN IF NOT EXISTS generoDomain AS smallint
  CHECK (VALUE BETWEEN 1 AND 6);

  	1- Homem-Cis
	2- Mulher-Cis
	3- Homem-Trans
	4- Mulher-Trans
	5- Não binario
	6 - outro
  
  
  /* SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
AND table_type = 'BASE TABLE';*/
CREATE TABLE IF NOT EXISTS Paciente (
    Num_Registro serial ,
    CPF int NOT NULL UNIQUE,
    Nome_Paciente varchar(50) NOT NULL,
    Sobrenome_Paciente varchar(50) NOT NULL,
    Data_Nascimento date,
    Genero generoDomain,
	
	CONSTRAINT RegistroPaciente PRIMARY KEY(Num_Registro)
);
CREATE TABLE IF NOT EXISTS Telefone (
    Num_Registro int,
    Num_Contato int,
	
	CONSTRAINT chaveTelefone PRIMARY KEY(Num_Contato),
	CONSTRAINT FK_Num_Registro_Telefone FOREIGN KEY(Num_Registro) REFERENCES Paciente(Num_Registro) 
	ON DELETE CASCADE ON UPDATE CASCADE	
);
CREATE TABLE IF NOT EXISTS Prontuario (
    Num_Registro int,
    Num_Prontuario serial,
	
	CONSTRAINT chaveProntuario PRIMARY KEY(Num_Prontuario),
	CONSTRAINT FK_Num_Registro_Prontuario FOREIGN KEY(Num_Registro) REFERENCES Paciente(Num_Registro) 
	ON DELETE CASCADE ON UPDATE CASCADE	
);

CREATE TABLE IF NOT EXISTS Observacao_Medica (
	Id_Observacao serial,
    Observacao text,
    Num_Prontuario int,
	
	CONSTRAINT chaveObservacao PRIMARY KEY(Num_Prontuario),
	CONSTRAINT FK_Num_Prontuario_Observacao FOREIGN KEY(Num_Prontuario) REFERENCES Prontuario(Num_Prontuario) 
	ON DELETE CASCADE ON UPDATE CASCADE	
);
