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
  	CONSTRAINT cliente_evento_fk FOREIGN KEY (id_cliente_evento) REFERENCES evento(id)
);

CREATE TABLE convidado (
	id serial PRIMARY KEY,
  	nome varchar(70),
  	id_convidado_evento,
  	CONSTRAINT convidado_evento FOREIGN KEY (id_convidado_evento) REFERENCES evento(id)
);

CREATE TABLE servico (
	id serial PRIMARY KEY,
  	
);

CREATE TABLE funcionario (

);
