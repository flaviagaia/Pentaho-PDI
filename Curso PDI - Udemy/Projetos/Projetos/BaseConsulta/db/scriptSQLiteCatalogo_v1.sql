-- catalogo definition


CREATE TABLE tb_item_catalogo (
	co_item INTEGER PRIMARY KEY,
	no_item TEXT(50) NOT NULL,
	no_esquema TEXT(50) NOT NULL,
	nr_ordem INTEGER NOT NULL,
	dt_ult_atualizacao DATE NULL,
	no_grupo TEXT(50) NOT NULL,
	tp_atualizacao TEXT(50) NOT NULL,	
	de_sql_origem TEXT(4000) NULL,
    de_sql_id_incremental TEXT(4000) NULL,
    de_sql_fmt_incremental TEXT(4000) NULL);

insert into tb_item_catalogo values (1, 'tb_cliente', 'public', 1, null, 'venda', 'completa','select cli.* from tb_cliente cli',null,null);
insert into tb_item_catalogo values (2, 'tb_categoria', 'public', 2, null, 'venda', 'incremental','select cat.* from tb_categoria cat','select COALESCE(max(co_categoria), 0) as id_PK from tb_categoria', 'select cat.* from tb_categoria cat where cat.co_categoria > @param');
insert into tb_item_catalogo values (3, 'tb_pedido', 'public', 3, null, 'venda', 'completa', 'select ped.* from tb_pedido ped', null, null);
insert into tb_item_catalogo values (4, 'tb_pedido_item', 'public', 4, null, 'venda', 'incremental', 'select ped.* from tb_pedido_item ped', 'select COALESCE(max(co_pedido_item), 0) as id_PK from tb_pedido_item','select ped.* from tb_pedido_item ped where co_pedido_item > @param');
insert into tb_item_catalogo values (5, 'tb_produto', 'public', 5, null, 'venda', 'completa','select prod.* from tb_produto prod',null,null);
insert into tb_item_catalogo values (6, 'tb_status_pedido', 'public', 6, null, 'venda', 'incremental','select status.* from tb_status_pedido status','select COALESCE(max(co_status), 0) as id_PK from tb_status_pedido','select status.* from tb_status_pedido status where co_status > @param');



   