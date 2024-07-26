CREATE TABLE evento (
	id serial PRIMARY KEY,
  	tipo varchar(50),
  	inicio timestamp,
 	termino timestamp
);

CREATE TABLE cliente (
	id serial PRIMARY KEY,
  	nome varchar(70),
  	id_cliente_evento integer,
  	CONSTRAINT cliente_evento_fk FOREIGN KEY (id_cliente_evento) REFERENCES evento(id) ON DELETE set null
);

CREATE TABLE convidado (
	id serial PRIMARY KEY,
  	nome varchar(70),
  	id_convidado_evento integer,
  	CONSTRAINT convidado_evento_fk FOREIGN KEY (id_convidado_evento) REFERENCES evento(id)
);

CREATE TABLE servico (
	id serial PRIMARY KEY,
  	tipo varchar(100),
  	id_servico_evento integer,
  	CONSTRAINT servico_evento_fk FOREIGN KEY (id_servico_evento) REFERENCES evento(id)
);

CREATE TABLE funcionario (
	id serial PRIMARY KEY,
  	nome varchar(50),
  	id_funcionario_evento integer,
  	CONSTRAINT funcionario_evento_fk FOREIGN KEY (id_funcionario_evento) REFERENCES evento(id)
);

CREATE TABLE local (
	id serial PRIMARY KEY,
  	nome varchar(100),
  	capacidade integer,
  	id_local_evento integer,
  	CONSTRAINT local_evento_fk FOREIGN KEY (id_local_evento) REFERENCES evento(id) ON DELETE set null
);

INSERT INTO evento(tipo, inicio, termino) values ('Aniversário Infantil', '2004-12-29 19:00:00', '2004-12-29 22:00:00');
