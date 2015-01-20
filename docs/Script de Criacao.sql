--Agencia de Propaganda 2014.2

--elimina tabelas que foram previamente criadas
drop table endereco cascade constraints purge;
drop table telefone cascade constraints purge;
drop table pessoa cascade constraints purge;
drop table fornecedor cascade constraints purge;
drop table funcionario cascade constraints purge;
drop table cliente cascade constraints purge;
drop table cargo cascade constraints purge;
drop table produto cascade constraints purge;
drop table material cascade constraints purge;
drop table campanha cascade constraints purge;
drop table promocao cascade constraints purge;
drop table midia cascade constraints purge;
drop table divulga cascade constraints purge;
drop table solicita cascade constraints purge;
drop table compra cascade constraints purge;

--elimina as sequencias existentes
drop sequence seq_id_endereco;
drop sequence seq_id_cargo;
drop sequence seq_id_produto;
drop sequence seq_id_midia;

--cria sequencias
create sequence seq_id_endereco increment by 1 start with 1;
create sequence seq_id_cargo increment by 1 start with 1;
create sequence seq_id_produto increment by 1 start with 1;
create sequence seq_id_midia increment by 1 start with 1;

--cria tabelas
CREATE TABLE endereco (
	id_endereco int,
	logradouro VARCHAR2 (60),
	numero int,
	complemento VARCHAR2 (60),
	cep VARCHAR2 (9),
	bairro VARCHAR2 (40),
	cidade VARCHAR2 (40),
	uf VARCHAR2 (2),
	constraint endereco_key primary key (id_endereco)
)SEGMENT CREATION IMMEDIATE;


CREATE TABLE fornecedor(
	cnpj VARCHAR2 (18),
	razao VARCHAR2 (40),
	endereco int not NULL,
	constraint fornecedor_key primary key (cnpj),
	constraint fornecedor_fkey foreign key (endereco) references endereco(id_endereco),
	constraint fornecedor_unique unique (endereco)
);

CREATE TABLE pessoa(
	cpf VARCHAR2(14),
	nome VARCHAR2(40),
	data_nascimento date,
	email VARCHAR2 (50),
	endereco int not NULL,
	constraint pessoa_key primary key (cpf),
	constraint pessoa_fkey foreign key (endereco) references endereco(id_endereco),
	constraint pessoa_unique unique (endereco)
);

CREATE TABLE telefone(
	pessoa VARCHAR2 (14),
	numero VARCHAR2 (8),
	constraint telefone_key primary key (pessoa, numero),
	constraint telefone_fkey foreign key (pessoa) references pessoa(cpf)
);

CREATE TABLE cargo(
	id_cargo int,
	funcao VARCHAR2 (20) not NULL,
	salario NUMBER(8,2) not NULL,
	constraint cargo_key primary key (id_cargo),
	constraint cargo_salario_check check (salario >= 730.00)
)SEGMENT CREATION IMMEDIATE;

CREATE TABLE funcionario(
	cpf VARCHAR2 (14),
	data_inicio date,
	data_fim date,
	cargo int not NULL,
	supervisor VARCHAR2 (14),
	constraint funcionario_key primary key (cpf),
	constraint funcionario_fkey foreign key (cpf) references pessoa (cpf),
	constraint funcionario_fkey2 foreign key (cargo) references cargo(id_cargo),
	constraint funcionario_fkey3 foreign key (supervisor) references funcionario(cpf)
);

CREATE TABLE cliente(
	cpf VARCHAR2 (14),
	funcionario VARCHAR2 (14),
	constraint cliente_key primary key (cpf),
	constraint cliente_fkey foreign key (cpf) references pessoa (cpf),
	constraint cliente_fkey2 foreign key (funcionario) references funcionario(cpf)
);

CREATE TABLE produto(
	id_produto int,
	descricaoP VARCHAR2 (60) not NULL,
	custo number (8,2),
	constraint produto_key primary key (id_produto)
)SEGMENT CREATION IMMEDIATE;

CREATE TABLE campanha (
	produto int,
	prazo VARCHAR2(30) not NULL,
	constraint campanha_key primary key (produto),
	constraint campanha_fkey foreign key (produto) references produto(id_produto)
);

CREATE TABLE material(
	produto int,
	validade date,
	constraint material_key primary key (produto),
	constraint material_fkey foreign key (produto) references produto (id_produto)
);

CREATE TABLE promocao (
	produto int,
	data_inicioP date,
	data_fimP date,
	desconto number (8,2),
	constraint promocao_key primary key (produto, data_inicioP, data_fimP, desconto),
	constraint promocao_fkey foreign key (produto) references produto (id_produto),
	constraint promocao_unique unique (produto)
);

CREATE TABLE midia(
	id_midia int,
	descricao VARCHAR2(60) not NULL,
	constraint midia_key primary key (id_midia)
)SEGMENT CREATION IMMEDIATE;

CREATE TABLE divulga (
	midia int,
	campanha int,
	constraint divulga_key primary key (midia, campanha),
	constraint divulga_fkey foreign key (midia) references midia(id_midia),	
	constraint divulga_fkey2 foreign key (campanha) references campanha(produto)
);

CREATE TABLE solicita (
	cnpj VARCHAR2(19), 
	produto int,
	funcionario VARCHAR2 (14),
	data_solicitacao date, 
	unidades_sol int not NULL,
	constraint solicita_key primary key (cnpj, produto, funcionario, data_solicitacao),
	constraint solicita_fkey foreign key (cnpj) references fornecedor(cnpj),
	constraint solicita_fkey2 foreign key (produto) references produto(id_produto),
	constraint solicita_fkey3 foreign key (funcionario) references funcionario(cpf)
);

CREATE TABLE compra(
	cliente VARCHAR2 (14),
	produto int,
	data_compra date,
	unidades int not NULL,
	constraint compra_key primary key (cliente, produto, data_compra),
	constraint compra_fkey foreign key (cliente) references cliente(cpf),
	constraint compra_fkey2 foreign key (produto) references produto(id_produto)
);