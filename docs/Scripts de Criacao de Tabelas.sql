--Agencia de Propaganda 2014.2

--remove tabelas previamente criadas
DROP TABLE tb_endereco CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_fornecedor CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_cliente CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_funcionario CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_cargo CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_material CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_campanha CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_promocao CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_midia CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_divulga CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_solicita CASCADE CONSTRAINTS PURGE;
DROP TABLE tb_compra CASCADE CONSTRAINTS PURGE;

--criacao das tabelas
CREATE TABLE tb_endereco OF tp_endereco(
	id_endereco 	PRIMARY KEY);

CREATE TABLE tb_fornecedor OF tp_fornecedor(
	cnpj			PRIMARY KEY,
	razao			NOT NULL,
	endereco		WITH ROWID REFERENCES tb_endereco);

	--nested table cargo x funcionario
CREATE TABLE tb_cargo OF tp_cargo(
	id_cargo		PRIMARY KEY);
	
CREATE TABLE tb_funcionario OF tp_funcionario(
	cpf				PRIMARY KEY,
	nome			NOT NULL,
	cargo			WITH ROWID REFERENCES tb_cargo,
	supervisor		WITH ROWID REFERENCES tb_funcionario)NESTED TABLE lista_clientes STORE AS tb_cargos_funcionario;
	
CREATE TABLE tb_cliente OF tp_cliente(
	cpf				PRIMARY KEY,
	nome			NOT NULL,
	endereco		WITH ROWID REFERENCES tb_endereco,
 	funcionario 	WITH ROWID REFERENCES tb_funcionario);

CREATE TABLE tb_promocao OF tp_promocao(
	PRIMARY KEY 	(data_inicioP, data_fimP, desconto));

CREATE TABLE tb_material OF tp_material(
	id_produto		PRIMARY KEY);

--nested table midia x campanha
CREATE TABLE tb_campanha OF tp_campanha(
	id_produto		PRIMARY KEY);
	

--CREATE TABLE tb_promocao OF tp_promocao(
--	produto 			WITH ROWID REFERENCES tb_material);

CREATE TABLE tb_midia OF tp_midia(
	id_midia		PRIMARY KEY,
	descricao		NOT NULL)/*NESTED TABLE lista_campanhas STORE AS tb_campanhas_midia*/;

--relacionamentos que restaram
CREATE TABLE tb_divulga OF tp_divulga(
	midia 			WITH ROWID REFERENCES tb_midia,
	campanha 		WITH ROWID REFERENCES tb_campanha
);

CREATE TABLE tb_solicita OF tp_solicita(
	unidades_sol 	NOT NULL,
	fornecedor 		WITH ROWID REFERENCES tb_fornecedor,
	funcionario 	WITH ROWID REFERENCES tb_funcionario
);

CREATE TABLE tb_compra OF tp_compra(
	cliente 		WITH ROWID REFERENCES tb_cliente	
);