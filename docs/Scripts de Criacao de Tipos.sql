--Agencia de Propaganda 2014.2

--remove tipos que foram previamente criados
DROP TYPE tp_endereco FORCE;
DROP TYPE tp_fornecedor FORCE;
DROP TYPE tp_telefone FORCE;
DROP TYPE tp_va_telefones FORCE;
DROP TYPE tp_pessoa FORCE;
DROP TYPE tp_cargo FORCE;
DROP TYPE tp_funcionario FORCE;
DROP TYPE tp_cliente FORCE;
DROP TYPE tp_produto FORCE;
DROP TYPE tp_material FORCE;
DROP TYPE tp_campanha FORCE;
DROP TYPE tp_promocao FORCE;
DROP TYPE tp_midia FORCE;
DROP TYPE tp_divulga FORCE;
DROP TYPE tp_solicita FORCE;
DROP TYPE tp_compra FORCE;
DROP TYPE tp_contato FORCE;
DROP TYPE tp_nt_clientes FORCE;
DROP TYPE tp_nt_campanha FORCE;

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

--criaÃ§Ã£o de tipos
CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
	id_endereco			INTEGER,
	logradouro			VARCHAR2(60),
	numero				INTEGER,
	complemento			VARCHAR2(60),
	cep					VARCHAR2(9),
	bairro				VARCHAR2(40),
	cidade				VARCHAR2(40),
	uf					VARCHAR2(40));
/

CREATE OR REPLACE TYPE tp_telefone AS OBJECT(
	ddd					VARCHAR2(3),
	telefone 			VARCHAR2(8));
/

CREATE OR REPLACE TYPE tp_va_telefones AS VARRAY(10) OF tp_telefone;
/

CREATE OR REPLACE TYPE tp_contato AS OBJECT(
	email				VARCHAR2(50),
	telefones			tp_va_telefones);
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
	cpf 				VARCHAR2(14),
	nome				VARCHAR2(40),
	data_nascimento		DATE,
	foto				BLOB,
	contato				tp_contato,
	endereco 			REF tp_endereco)NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_cliente UNDER tp_pessoa(
	funcionario 		REF tp_funcionario
);
/

CREATE OR REPLACE TYPE tp_fornecedor AS OBJECT(
	cnpj				VARCHAR2(18),
	razao				VARCHAR2(40),
	endereco			REF tp_endereco);
/

CREATE OR REPLACE TYPE tp_produto AS OBJECT(
	id_produto 			INTEGER,
	descricaoP			VARCHAR2(50),
	custo				NUMBER(8,2))NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_material UNDER tp_produto(
	validade			DATE);
/

CREATE OR REPLACE TYPE tp_promocao AS OBJECT(
	data_inicioP		DATE,
	data_fimP			DATE,
	desconto			NUMBER(8,2),
	produto 			REF tp_produto);
/

--cargo e funcionario
CREATE OR REPLACE TYPE tp_cargo AS OBJECT(
	id_cargo			INTEGER,
	funcao				VARCHAR2(20),
	salario				NUMBER(8,2));
/

CREATE OR REPLACE TYPE tp_nt_clientes AS TABLE OF tp_cliente;
/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa(
	data_inicio			DATE,
	data_fim			DATE,
	cargo 				REF tp_cargo,
	supervisor			REF tp_funcionario,
	lista_clientes		tp_nt_clientes);
/

--midia e campanha
CREATE OR REPLACE TYPE tp_campanha UNDER tp_produto(
	prazo				VARCHAR2(30));
/

CREATE OR REPLACE TYPE tp_nt_campanha AS TABLE OF tp_campanha;
/

CREATE OR REPLACE TYPE tp_midia AS OBJECT(
	id_midia			INTEGER,
	descricao			VARCHAR2(60));
	--lista_campanhas		tp_nt_campanha));
/

--relacionamentos restantes (?)
CREATE OR REPLACE TYPE tp_divulga AS OBJECT(
	midia 				REF tp_midia,
	campanha 			REF tp_campanha);
/

CREATE OR REPLACE TYPE tp_solicita AS OBJECT(
	unidades_sol		INTEGER,
	data_solicitacao	DATE,
	fornecedor 			REF tp_fornecedor,
	funcionario 		REF tp_funcionario,
	produto 			REF tp_produto);
/

CREATE OR REPLACE TYPE tp_compra AS OBJECT(
	data_compra 		DATE,
	unidades 			INTEGER,
	cliente 			REF tp_cliente,
	produto 			REF tp_produto);
/
