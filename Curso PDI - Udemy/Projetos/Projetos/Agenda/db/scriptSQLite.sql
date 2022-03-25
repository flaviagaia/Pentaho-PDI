/*
     SEM FK na tabela tb_contato_endereco

*/

create table tb_contato
(
	co_seq_contato 		INTEGER PRIMARY KEY,
	no_contato			text (100),
	co_genero 			text(1),
	ds_email			text(100),
	nu_telefone			text(20)
);

create table tb_contato_endereco
(
	co_seq_contato 		INTEGER PRIMARY KEY,
	ds_endereco			text(100),
	ds_compl_endereco	text(50),
	ds_cidade_endereco	text(50),
	ds_estado_endereco	text(50),
	co_pais_endereco	text(2),	
	co_codigo_postal	text(10)
);