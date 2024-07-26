CREATE TABLE paciente (
	id serial PRIMARY KEY,
  	nome varchar(70)
);

CREATE TABLE profissional (
	id serial PRIMARY KEY,
  	nome varchar(70),
  	especialidade varchar(50)
);

CREATE TABLE receita (
	id serial PRIMARY KEY,
  	receita text,
  	id_receita_paciente integer,
  	CONSTRAINT receita_paciente_fk FOREIGN KEY (id_receita_paciente) REFERENCES paciente(id) ON DELETE set null
);

CREATE TABLE consulta (
	id serial PRIMARY KEY,
  	data date,
  	id_consulta_profissional integer,
  	id_consulta_receita integer,
  	id_consulta_paciente integer,
  	CONSTRAINT consulta_profissional_fk FOREIGN KEY (id_consulta_profissional) REFERENCES consulta(id),
  	CONSTRAINT consulta_receita_fk FOREIGN KEY (id_consulta_receita) REFERENCES receita(id) ON DELETE set null,
  	CONSTRAINT consulta_paciente_fk FOREIGN KEY (id_consulta_paciente) REFERENCES paciente(id) ON DELETE set null
);

INSERT INTO paciente(nome) values ('John Doe');
INSERT INTO profissional(nome, especialidade) values ('Jane Doe', 'Otorrinolaringologista');
INSERT INTO receita(receita, id_receita_paciente) values ('2 capsulas de dipirona. 2 capsulas de paracetamol', 1);
INSERT INTO consulta(data, id_consulta_profissional, id_consulta_receita, id_consulta_paciente) values ('2024-07-30', 1, 1, 1);
