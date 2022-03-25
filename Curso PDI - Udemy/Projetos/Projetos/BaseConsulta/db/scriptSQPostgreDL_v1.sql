create table tb_cliente
(
	co_cliente 			int PRIMARY KEY,
	no_cliente			varchar (100),
	ds_email			varchar(100),
	nu_telefone			varchar(20),
	ds_endereco         varchar(100),
	ds_cidade           varchar(100),
	ds_bairro           varchar(100),
	cd_uf               varchar(2),
	cd_cep	 			varchar(8)
);

create table tb_categoria
(
	co_categoria	int PRIMARY KEY,
	ds_categoria	varchar(100)
);

create table tb_produto
(
	co_produto 		int PRIMARY KEY,
	ds_produto		varchar(100),
	co_categoria	int,
	vl_preco		decimal(16,2),
	nu_quantidade	int
);

create table tb_status_pedido
(
	co_status 		int PRIMARY KEY,
	ds_status		varchar(100)
);

create table tb_pedido
(
	co_pedido 		int PRIMARY KEY,
	dt_pedido		DATE,
	co_cliente		int,
	co_status		int
);

create table tb_pedido_item
(
	co_pedido_item	int PRIMARY KEY,
	co_pedido		int,
	co_produto		int,
	vl_preco		decimal(16,2),
	nu_quantidade	int
);

