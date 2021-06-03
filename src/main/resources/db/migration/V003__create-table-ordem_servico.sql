CREATE table ordem_servico (
	ID bigint not null auto_increment,
    CLIENTE_ID bigint not null,
    DESCRICAO text not null,
    PRECO decimal(10, 2) not null,
    STATUS varchar(20) not null,
    DATA_ABERTURA datetime not null,
    DATA_FINALIZACAO datetime,

	PRIMARY KEY (id)
);

ALTER TABLE ORDEM_SERVICO ADD CONSTRAINT fk_ordem_servico_cliente
foreign key (cliente_id) references cliente (id);