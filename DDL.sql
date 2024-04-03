CREATE DOMAIN IF NOT EXISTS generoDomain AS smallint
  CHECK (VALUE IN BETWEEN 1 AND 6);
  /*
  	1- Homem-Cis
	2- Mulher-Cis
	3- Homem-Trans
	4- Mulher-Trans
	5- Não binario
	6 - outro
  */
CREATE TABLE IF NOT EXISTS Paciente (
    Num_Registro serial ,
    CPF int NOTNULL UNIQUE,
    Nome_Paciente varchar() NOTNULL,
    Sobrenome_Paciente varchar() NOTNULL,
    Data_Nascimento date,
    Genero generoDomain,
	
	CONSTRAINT RegistroPaciente PRIMARY KEY(Num_Registro)
);