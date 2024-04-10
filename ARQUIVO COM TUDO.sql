CREATE SCHEMA bdteste;
SET search_path TO bdteste,public;
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
    GeneroPaciente smallint,
	
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
	Nome_Especialidade varchar(21) NOT NULL unique,
	Descricao_Esp varchar(255) NOT NULL,
	
	CONSTRAINT chaveEspecialidade PRIMARY KEY(Id_Especialidade)

);
CREATE TABLE IF NOT EXISTS Medico (
	Id_Medico serial,
    COD_CRM numeric(6),
	Estado char(2),
	Nome_Medico varchar(15) NOT NULL,
    Sobrenome_Medico varchar(25) NOT NULL,
	Especialidade1_FK smallint,
	Especialidade2_FK smallint CHECK (Especialidade2_FK <> Especialidade1_FK),
	
	CONSTRAINT chaveMedico PRIMARY KEY(Id_Medico),
	CONSTRAINT uniqueMedico UNIQUE(cod_crm, estado),
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
	CONSTRAINT FK_Procedimento_Paciente FOREIGN KEY(Num_Registro_Pac) REFERENCES Paciente(Num_Registro ) 
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
	Id_Cirurgia serial,
	Nome_Cirurgia varchar(30) Unique,
	
	CONSTRAINT chaveCirurgia PRIMARY KEY(Id_Cirurgia)
);
CREATE TABLE IF NOT EXISTS Cirurgia_Realizada(
	Id_Procedimento int NOT NULL,
	id_Cirurgia smallint,
	Complicacao varchar(255),
	Gravidade varchar(10),
	
	CONSTRAINT chaveCirurgiaRealizada PRIMARY KEY(Id_Procedimento),
	CONSTRAINT FK_Procedimento_Cirurgia FOREIGN KEY(Id_Procedimento) REFERENCES Procedimento(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Cirurgia FOREIGN KEY(id_Cirurgia) REFERENCES Cirurgia(id_Cirurgia) 
		ON DELETE SET NULL ON UPDATE CASCADE
	
);
CREATE TABLE IF NOT EXISTS Tipo_Exame(
	Id_TipoExame serial,
	Nome_TipoExame varchar(20) NOT NULL UNIQUE,
	
	CONSTRAINT chaveTipoExame PRIMARY KEY(Id_TipoExame)
);
CREATE TABLE IF NOT EXISTS Exame_Categoria(
	Id_Exame serial,
	Nome_Exame varchar(30) unique,
	Id_TipoExame smallint,
	
	CONSTRAINT chaveExameCategoria PRIMARY KEY(Id_Exame),
	CONSTRAINT FK_TipoExame FOREIGN KEY(Id_TipoExame) REFERENCES Tipo_Exame(Id_TipoExame) 
		ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Exame_Realizado(
	Id_Procedimento int,
	Id_Exame smallint NOT NULL,
	
	CONSTRAINT chaveExameRealizado PRIMARY KEY(Id_Procedimento),
	CONSTRAINT FK_Exame_Procedimento FOREIGN KEY(Id_Procedimento) REFERENCES Procedimento(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Exame_Categoria FOREIGN KEY(Id_Exame) REFERENCES Exame_Categoria(Id_Exame) 
		ON DELETE CASCADE ON UPDATE CASCADE
	
);
CREATE TABLE IF NOT EXISTS Resultado(
	Id_Procedimento int NOT NULL,
	Id_Resultado serial,
	Resultado_Text varchar(50),
	
	CONSTRAINT chaveResultado PRIMARY KEY(id_resultado),
	CONSTRAINT FK_Resultado_Exame FOREIGN KEY(Id_Procedimento) REFERENCES Exame_Realizado(Id_Procedimento) 
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
);
CREATE TABLE IF NOT EXISTS Consulta(
	Id_Procedimento int not null,
	Data_Retorno timestamp,
	Motivo_Consulta varchar(30),
	
	CONSTRAINT chaveConsulta PRIMARY KEY(Id_Procedimento),
	CONSTRAINT FK_Consulta_Procedimento FOREIGN KEY(Id_Procedimento) REFERENCES Procedimento(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Prescricao(
	Id_Prescricao serial,
	Id_Procedimento int NOT NULL,
	Data_Validade timestamp not null,
	Recomendacao_Medica varchar(45),
	Nome_Medicamento_Presc varchar(20),
	
	CONSTRAINT chavePresc PRIMARY KEY(Id_Prescricao),
	CONSTRAINT FK_PRESC_CONSULTA FOREIGN KEY(Id_Procedimento) REFERENCES Consulta(Id_Procedimento) 
		ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS Ministra (
	Id_Procedimento int,
	Id_Medico smallint,
	
	CONSTRAINT FK_Ministra_Medico FOREIGN KEY(Id_Medico) REFERENCES Medico(Id_Medico) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Ministra_Procedimento FOREIGN KEY(Id_Procedimento) REFERENCES Procedimento(Id_Procedimento) 
		ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO Genero (Nome_Genero) values('Homem-Cis');
INSERT INTO Genero (Nome_Genero) values('Mulher-Cis');
INSERT INTO Genero (Nome_Genero) values('Homem-Trans');
INSERT INTO Genero (Nome_Genero) values('Mulher-Trans');
INSERT INTO Genero (Nome_Genero) values('Não-Binario');
INSERT INTO Genero (Nome_Genero) values('Outro')
INSERT INTO Paciente VALUES (DEFAULT, 12345678901, 'João', 'Silva', '1990-05-15', 1);
INSERT INTO Paciente VALUES (DEFAULT, 98765432109, 'Maria', 'Santos', '1985-08-20', 2);
INSERT INTO Paciente VALUES (DEFAULT, 45678912345, 'Pedro', 'Oliveira', '1982-12-10', 3);
INSERT INTO Paciente VALUES (DEFAULT, 78912345678, 'Ana', 'Ferreira', '1978-04-25', 4);
INSERT INTO Paciente VALUES (DEFAULT, 65432198765, 'Lucas', 'Costa', '1995-10-08', 5);
INSERT INTO Paciente VALUES (DEFAULT, 32165498732, 'Mariana', 'Almeida', '2000-07-03', 6);
INSERT INTO Paciente VALUES (DEFAULT, 45612378901, 'Carlos', 'Ribeiro', '1987-09-18', 1);
INSERT INTO Paciente VALUES (DEFAULT, 98732165409, 'Juliana', 'Martins', '1992-11-30', 2);
INSERT INTO Paciente VALUES (DEFAULT, 74185296314, 'Gabriel', 'Pereira', '1980-02-14', 3);
INSERT INTO Paciente VALUES (DEFAULT, 36925814785, 'Laura', 'Gomes', '1998-03-22', 4);
INSERT INTO Paciente VALUES (DEFAULT, 85296374125, 'Rafaela', 'Lima', '1993-06-05', 5);
INSERT INTO Paciente VALUES (DEFAULT, 15948726374, 'Fernando', 'Souza', '1976-08-12', 6);
INSERT INTO Paciente VALUES (DEFAULT, 36914725836, 'Carolina', 'Fernandes', '1989-01-27', 1);
INSERT INTO Paciente VALUES (DEFAULT, 25836914785, 'Gustavo', 'Carvalho', '2001-04-10', 2);
INSERT INTO Paciente VALUES (DEFAULT, 14725836925, 'Bianca', 'Dias', '1997-07-15', 3);
INSERT INTO Paciente VALUES (DEFAULT, 85214796374, 'Marcelo', 'Rocha', '1983-12-20', 4);
INSERT INTO Paciente VALUES (DEFAULT, 14796385214, 'Renata', 'Sousa', '1994-09-03', 5);
INSERT INTO Paciente VALUES (DEFAULT, 96385214789, 'Diego', 'Barbosa', '1986-11-28', 6);
INSERT INTO Paciente VALUES (DEFAULT, 96314785236, 'Tatiane', 'Melo', '1991-02-17', 1);
INSERT INTO Paciente VALUES (DEFAULT, 85236914785, 'André', 'Nascimento', '1979-05-08', 2);
INSERT INTO Paciente VALUES (DEFAULT, 14785236925, 'Roberta', 'Correia', '2002-08-25', 3);
INSERT INTO Paciente VALUES (DEFAULT, 36985214785, 'Felipe', 'Cardoso', '1996-10-14', 4);
INSERT INTO Paciente VALUES (DEFAULT, 36974185296, 'Natália', 'Araújo', '1984-03-19', 5);
INSERT INTO Paciente VALUES (DEFAULT, 85236974125, 'Eduardo', 'Gonçalves', '1981-07-06', 6);
INSERT INTO Paciente VALUES (DEFAULT, 12345678000, 'Fabiana', 'Ferreira', '1990-05-15', 1);
INSERT INTO Paciente VALUES (DEFAULT, 98765432000, 'Ricardo', 'Santos', '1985-08-20', 2);
INSERT INTO Paciente VALUES (DEFAULT, 45678912000, 'Carlos', 'Oliveira', '1982-12-10', 3);
INSERT INTO Paciente VALUES (DEFAULT, 78912345000, 'Ana', 'Silva', '1978-04-25', 4);
INSERT INTO Paciente VALUES (DEFAULT, 65432198000, 'Luana', 'Costa', '1995-10-08', 5);
INSERT INTO Paciente VALUES (DEFAULT, 32165498000, 'Mariana', 'Almeida', '2000-07-03', 6);
INSERT INTO Paciente VALUES (DEFAULT, 45612378000, 'Marcos', 'Ribeiro', '1987-09-18', 1);
INSERT INTO Paciente VALUES (DEFAULT, 98732165000, 'Juliana', 'Martins', '1992-11-30', 2);
INSERT INTO Paciente VALUES (DEFAULT, 74185296000, 'Gabriel', 'Pereira', '1980-02-14', 3);
INSERT INTO Paciente VALUES (DEFAULT, 36925814000, 'Laura', 'Gomes', '1998-03-22', 4);
INSERT INTO Paciente VALUES (DEFAULT, 85296374000, 'Rafaela', 'Lima', '1993-06-05', 5);
INSERT INTO Paciente VALUES (DEFAULT, 15948726000, 'Fernando', 'Souza', '1976-08-12', 6);
INSERT INTO Paciente VALUES (DEFAULT, 36914725000, 'Carolina', 'Fernandes', '1989-01-27', 1);
INSERT INTO Paciente VALUES (DEFAULT, 25836914000, 'Gustavo', 'Carvalho', '2001-04-10', 2);
INSERT INTO Paciente VALUES (DEFAULT, 14725836000, 'Bianca', 'Dias', '1997-07-15', 3);
INSERT INTO Paciente VALUES (DEFAULT, 85214796000, 'Marcelo', 'Rocha', '1983-12-20', 4);
INSERT INTO Paciente VALUES (DEFAULT, 14796385000, 'Renata', 'Sousa', '1994-09-03', 5);
INSERT INTO Paciente VALUES (DEFAULT, 96385214000, 'Diego', 'Barbosa', '1986-11-28', 6);
INSERT INTO Paciente VALUES (DEFAULT, 96314785000, 'Tatiane', 'Melo', '1991-02-17', 1);
INSERT INTO Paciente VALUES (DEFAULT, 85236914000, 'André', 'Nascimento', '1979-05-08', 2);
INSERT INTO Paciente VALUES (DEFAULT, 14785236000, 'Roberta', 'Correia', '2002-08-25', 3);
INSERT INTO Paciente VALUES (DEFAULT, 36985214000, 'Felipe', 'Cardoso', '1996-10-14', 4);
INSERT INTO Paciente VALUES (DEFAULT, 36974185000, 'Natália', 'Araújo', '1984-03-19', 5);
INSERT INTO Paciente VALUES (DEFAULT, 85236974000, 'Eduardo', 'Gonçalves', '1981-07-06', 6);
INSERT INTO Paciente VALUES (DEFAULT, 11122233344, 'Marta', 'Ferreira', '1980-09-01', 1);
INSERT INTO Paciente VALUES (DEFAULT, 11122233340, 'Isabela', 'Lima', '1993-08-25', 2);
INSERT INTO Paciente VALUES (DEFAULT, 22233344450, 'Raul', 'Pereira', '1988-11-18', 1);
INSERT INTO Paciente VALUES (DEFAULT, 33344455560, 'Amanda', 'Santos', '1985-02-13', 2);
INSERT INTO Paciente VALUES (DEFAULT, 44455566670, 'José', 'Oliveira', '1990-04-07', 1);
INSERT INTO Paciente VALUES (DEFAULT, 55566677780, 'Fernanda', 'Silva', '1977-07-01', 2);
INSERT INTO Paciente VALUES (DEFAULT, 66677788890, 'Paulo', 'Gomes', '2001-09-23', 1);
INSERT INTO Paciente VALUES (DEFAULT, 77788899900, 'Gabriela', 'Ferreira', '1996-12-16', 2);
INSERT INTO Paciente VALUES (DEFAULT, 88899900010, 'Ricardo', 'Almeida', '1983-02-09', 1);
INSERT INTO Paciente VALUES (DEFAULT, 99900011120, 'Mariana', 'Martins', '1998-05-03', 2);
INSERT INTO Paciente VALUES (DEFAULT, 11122233341, 'Roberto', 'Rodrigues', '1989-07-26', 1);
INSERT INTO Paciente VALUES (DEFAULT, 22233344451, 'Renata', 'Lopes', '2002-10-18', 2);
INSERT INTO Paciente VALUES (DEFAULT, 33344455561, 'Fábio', 'Melo', '1995-01-11', 1);
INSERT INTO Paciente VALUES (DEFAULT, 44455566671, 'Camila', 'Nascimento', '1980-04-04', 2);
INSERT INTO Paciente VALUES (DEFAULT, 55566677781, 'Pedro', 'Fernandes', '1975-06-27', 1);
INSERT INTO Paciente VALUES (DEFAULT, 66677788891, 'Sara', 'Sousa', '1994-09-20', 2);
INSERT INTO Paciente VALUES (DEFAULT, 77788899901, 'Lucas', 'Barbosa', '1987-12-13', 1);
INSERT INTO Paciente VALUES (DEFAULT, 88899900011, 'Carolina', 'Costa', '1992-03-07', 2);
INSERT INTO Paciente VALUES (DEFAULT, 99900011121, 'Márcio', 'Rocha', '1986-05-31', 1);
INSERT INTO Paciente VALUES (DEFAULT, 11122233342, 'Aline', 'Silveira', '2000-08-23', 2);
INSERT INTO Paciente VALUES (DEFAULT, 22233344452, 'Paulo', 'Santana', '1997-11-15', 1);
INSERT INTO Paciente VALUES (DEFAULT, 33344455562, 'Renata', 'Albuquerque', '1982-02-08', 2);
INSERT INTO Paciente VALUES (DEFAULT, 44455566672, 'Fernando', 'Dias', '1993-04-03', 1);
INSERT INTO Paciente VALUES (DEFAULT, 55566677782, 'Bianca', 'Correia', '1988-06-26', 2);
INSERT INTO Paciente VALUES (DEFAULT, 66677788892, 'Marcelo', 'Cardoso', '1976-09-18', 1);
INSERT INTO Paciente VALUES (DEFAULT, 11122233346, 'Fernanda', 'Oliveira', '1996-07-08', 2);
INSERT INTO Paciente VALUES (DEFAULT, 22233344456, 'Rafael', 'Martins', '1981-09-30', 1);
INSERT INTO Paciente VALUES (DEFAULT, 33344455566, 'Mariana', 'Santos', '1990-12-23', 2);
INSERT INTO Paciente VALUES (DEFAULT, 44455566676, 'José', 'Silva', '1975-03-16', 1);
INSERT INTO Paciente VALUES (DEFAULT, 55566677786, 'Camila', 'Ferreira', '1988-06-09', 2);
INSERT INTO Paciente VALUES (DEFAULT, 66677788896, 'Pedro', 'Almeida', '2003-08-31', 1);
INSERT INTO Paciente VALUES (DEFAULT, 77788899906, 'Gabriela', 'Sousa', '1998-11-24', 2);
INSERT INTO Paciente VALUES (DEFAULT, 88899900016, 'Ricardo', 'Pereira', '1993-02-17', 1);
INSERT INTO Paciente VALUES (DEFAULT, 99900011126, 'Amanda', 'Lima', '1986-05-11', 2);
INSERT INTO Paciente VALUES (DEFAULT, 11122233347, 'Gustavo', 'Rodrigues', '2001-07-04', 1);
INSERT INTO Paciente VALUES (DEFAULT, 22233344457, 'Laura', 'Martins', '1994-10-26', 2);
INSERT INTO Paciente VALUES (DEFAULT, 33344455567, 'Rafael', 'Fernandes', '1989-01-19', 1);
INSERT INTO Paciente VALUES (DEFAULT, 44455566677, 'Isabela', 'Nascimento', '1994-04-12', 2);
INSERT INTO Paciente VALUES (DEFAULT, 55566677787, 'Bruno', 'Almeida', '1979-07-05', 1);
INSERT INTO Paciente VALUES (DEFAULT, 66677788897, 'Carolina', 'Costa', '1998-09-27', 2);
INSERT INTO Paciente VALUES (DEFAULT, 77788899907, 'Fábio', 'Silva', '1991-12-20', 1);
INSERT INTO Paciente VALUES (DEFAULT, 88899900017, 'Renata', 'Ribeiro', '1985-03-13', 2);
INSERT INTO Paciente VALUES (DEFAULT, 99900011127, 'Lucas', 'Oliveira', '1990-06-05', 1);
INSERT INTO Paciente VALUES (DEFAULT, 11122233348, 'Mariana', 'Santana', '1999-08-28', 2);
INSERT INTO Paciente VALUES (DEFAULT, 22233344458, 'Rodrigo', 'Lopes', '1996-11-20', 1);
INSERT INTO Paciente VALUES (DEFAULT, 33344455568, 'Tatiana', 'Almeida', '1981-02-12', 2);
INSERT INTO Paciente VALUES (DEFAULT, 44455566678, 'Pedro', 'Campos', '1992-05-06', 1);
INSERT INTO Paciente VALUES (DEFAULT, 55566677788, 'Camila', 'Correia', '1987-08-29', 2);
INSERT INTO Paciente VALUES (DEFAULT, 66677788898, 'Bruno', 'Cardoso', '1976-11-21', 1);
INSERT INTO Paciente VALUES (DEFAULT, 66677788893, 'Nicolas', 'Martins', '2000-11-21', 1);
INSERT INTO Paciente VALUES (DEFAULT, 18745362085, 'Jefferson', 'Cardoso', '1998-04-03', 1);
INSERT INTO Paciente VALUES (DEFAULT, 08745618923, 'Vitor', 'da Fonseca Rodrigues', '2003-11-26', 1);