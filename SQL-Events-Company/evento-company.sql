CREATE TABLE evento (
	id serial PRIMARY KEY,
  	tipo varchar(50)
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
  	id_convidado_evento,
  	CONSTRAINT convidado_evento FOREIGN KEY (id_convidado_evento) REFERENCES evento(id)
);

CREATE TABLE servico (
	id serial PRIMARY KEY,
  	tipo varchar(100),
  	id_servico_evento integer,
  	CONSTRAINT servico_evento FOREIGN KEY (id_servico_evento) REFERENCES evento(id)
);

CREATE TABLE funcionario (
	id serial PRIMARY KEY,
  
);
