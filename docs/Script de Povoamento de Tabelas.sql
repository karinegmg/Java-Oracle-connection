--INSERT INTO tb_lente_oftalmica VALUES(tp_lente_oftalmica('uyova',NULL,312.59,'LEN',  tp_nt_promocoes(), 'dir',2.20,'entregue', 'degressiva'));-->
--endereÃ§os
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Casa Branca', 60, NULL, '51170-140', 'Imbiribeira', 'Recife', 'PE'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Jose de Alencar', 160 , NULL, '51000-140', 'Boa Viagem', 'Recife', 'PE'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Borboletas Psicodelicas', 222, NULL, '4132-140', 'Jabaquara', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Verao do Cometa', 232, 'Apt. 23', '51252-365','Itaquera', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Travessa Canastrao Excentrica', 323, NULL, '45869-210', 'Itaquera', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Viagem ao Cabu', 88, NULL, '54544-488', 'Itaquera', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Anita Garibaldi', 76, 'Bloco D, casa 50', '78151-156', 'Imbiribeira' , 'Capao Redondo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Carlota Luisa De Jesus', 50, NULL, '03086-060', 'Parque Sao Jorge', 'SaoPaulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Carlota Luisa De Jesus', 54, NULL, '03086-060', 'Parque Sao Jorge', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Carlota Luisa De Jesus', 55, NULL, '03086-060', 'Parque Sao Jorge', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Carlota Luisa De Jesus', 51, NULL, '03086-060', 'Parque Sao Jorge', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Carlota Luisa De Jesus', 53, NULL, '03086-060', 'Parque Sao Jorge', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Carlota Luisa De Jesus', 500, NULL, '03086-060', 'Parque Sao Jorge', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Carlota Luisa De Jesus', 502, 'Apt34', '03086-060', 'Parque Sao Jorge', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Carlota Luisa De Jesus', 502, 'Apt54', '03086-060', 'Parque Sao Jorge', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua 51', 51, NULL, '22245-678', 'ABC', 'Cabrobo', 'PE'));
--EndereÃ§os do fornecedor Fornecedor
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Bom Pastor', 11, NULL, '55940-000', 'centro', 'Condado', 'PE'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Dilma Rousseff', 13, 'coligado ao PT', '55941-000', 'Novo Condado', 'Recife', 'PE'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Aecio Neves', 45, '#mudancasJA', '55942-000', 'Morada da pala', 'Goiana', 'PB'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Eduardo Jorge', 40, 'QUERO!', '55661-000', 'centro', 'Sao Paulo', 'SP'));
INSERT INTO tb_endereco VALUES (tp_endereco(seq_id_endereco.nextval, 'Rua Luciana Genro', 50, NULL, '12345-678', 'centro', 'Joao Pessoa', 'PB'));
--Fim endereÃ§os

--Cargo
INSERT INTO tb_cargo VALUES (tp_cargo(seq_id_cargo.nextval, 'Secretaria', 820.00));
INSERT INTO tb_cargo VALUES (tp_cargo(seq_id_cargo.nextval, 'Telefonista', 820.00));
INSERT INTO tb_cargo VALUES (tp_cargo(seq_id_cargo.nextval, 'Publicitario', 2800.20));
INSERT INTO tb_cargo VALUES (tp_cargo(seq_id_cargo.nextval, 'Design', 1200.00));
INSERT INTO tb_cargo VALUES (tp_cargo(seq_id_cargo.nextval, 'Suporte de TI', 1300.00));
INSERT INTO tb_cargo VALUES (tp_cargo(seq_id_cargo.nextval, 'Diretor', 7285.00));
INSERT INTO tb_cargo VALUES (tp_cargo(seq_id_cargo.nextval, 'Estagiario', 740.00));
--Fim Cargo

--Funcionario
INSERT INTO tb_funcionario VALUES (tp_funcionario('312.039.102-39', 'Joao Miguel Aragao', '21/10/1987', EMPTY_BLOB(), tp_contato('joaomiguel@email.com', tp_va_telefones(tp_telefone('81', '47195873'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 1), to_date('08/12/2009' , 'dd/mm/yy'), to_date('05/04/2014' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 6), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = NULL), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('411.862.109-89', 'Joelmir Santos Gonzaga', '10/11/1984', EMPTY_BLOB(), tp_contato('joel@yahoo.com', tp_va_telefones(tp_telefone('81', '37649756'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 7), to_date('04/12/2006' , 'dd/mm/yy'), to_date('12/08/2011' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 6), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = NULL), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('510.362.857-78', 'Fabio Seixas Santos', '10/03/1967', EMPTY_BLOB(), tp_contato('fabio@fabio.com', tp_va_telefones(tp_telefone('81', '47194754'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 4), to_date('07/11/2007' , 'dd/mm/yy'), to_date('20/11/2009' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 3), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '312.039.102-39'), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('111.111.111-11', 'Alexandre Ferreira', '23/03/1990',EMPTY_BLOB(), tp_contato('alexandreferreira@email.com',  tp_va_telefones(tp_telefone('81', '44526131'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 2), to_date('05/04/2013' , 'dd/mm/yy'), to_date('05/04/2014' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 2), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '411.862.109-89'), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('009.177.130-56', 'Marcos Vinicius Santana Fontes', '12/06/1980', EMPTY_BLOB(), tp_contato('mac@bol.com.br',  tp_va_telefones(tp_telefone('81', '39213839'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 8), to_date('06/12/2005' , 'dd/mm/yy'), to_date('07/11/2008' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 7), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '312.039.102-39'), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('563.305.254-67', 'Maria Jose', '03/04/1981', EMPTY_BLOB(), tp_contato('maria.jose@google.com',  tp_va_telefones(tp_telefone('81', '30928155'), tp_telefone('81', '12345678'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 15), to_date('09/11/2010' , 'dd/mm/yy'), to_date('05/04/2014' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 1), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = NULL), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('158.432.873-08', 'Rodrigo Santana Alves', '19/02/1983', EMPTY_BLOB(), tp_contato('rodrigo@hotmail.com',  tp_va_telefones(tp_telefone('81', '64199526'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 10), to_date('09/09/2005' , 'dd/mm/yy'), to_date('05/04/2020' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 4), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '411.862.109-89'), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('407.773.112-61', 'Luizinho Reis Leal', '04/11/1885', EMPTY_BLOB(), tp_contato('luiz@ig.com.br', tp_va_telefones(tp_telefone('81', '57800893'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 12),  to_date('09/07/2006' , 'dd/mm/yy'), to_date('05/04/2020' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 4), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '312.039.102-39'), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('120.979.204-47', 'Edson Cunha da os Santos', '02/03/1995', EMPTY_BLOB(), tp_contato('edson@ufpe.br', tp_va_telefones(tp_telefone('81', '16805470'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 13), to_date('03/06/2006' , 'dd/mm/yy'), to_date('05/04/2020' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 5), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '411.862.109-89'), tp_nt_clientes()));
INSERT INTO tb_funcionario VALUES (tp_funcionario('329.948.988-97', 'Genival Lacerda', '06/06/1996', EMPTY_BLOB(), tp_contato('genival@oi.com.br', tp_va_telefones(tp_telefone('81', '03721116'))), (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 14),  to_date('06/07/2004' , 'dd/mm/yy'), to_date('05/04/2020' , 'dd/mm/yy'), (SELECT REF(c) FROM tb_cargo c WHERE c.id_cargo = 5), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '312.039.102-39'), tp_nt_clientes()));

--Fim funcionario


--Cliente
INSERT INTO tb_cliente VALUES(tp_cliente('785.895.165-47', 'Jair Bolsonaro', '12/12/1970', EMPTY_BLOB(), tp_contato('jairbolsonaro@email.com',  tp_va_telefones(tp_telefone('81', '68011620'))),(SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 3), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf ='510.362.857-78')));
INSERT INTO tb_cliente VALUES(tp_cliente('517.987.951-87', 'Marilia Angela de Lima', '28/03/1994', EMPTY_BLOB(), tp_contato('mari@gmail.com',  tp_va_telefones(tp_telefone('81', '74955834'))),(SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 6), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf ='411.862.109-89')));
INSERT INTO tb_cliente VALUES(tp_cliente('338.158.833-22', 'Vinicius Andrade dos Reis', '01/01/1899', EMPTY_BLOB(), tp_contato('vini@live.com',  tp_va_telefones(tp_telefone('81', '85854992'))),(SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 11), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf ='385.185.040-15')));
INSERT INTO tb_cliente VALUES(tp_cliente('659.573.052-73', 'Paulo Henrique dos Santos', '12/09/1993', EMPTY_BLOB(), tp_contato('ph@radiotibia.com.br',  tp_va_telefones(tp_telefone('81', '45641109'))),(SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 9), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf ='510.362.857-78')));
INSERT INTO tb_cliente VALUES(tp_cliente('123.456.789-00', 'Luiz Inacio Lula', '03/03/1945', EMPTY_BLOB(), tp_contato('lula@pt.com',  tp_va_telefones(tp_telefone(null, null))),(SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 16), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = NULL)));
--Fim cliente

--Fornecedor
INSERT INTO tb_fornecedor VALUES (tp_fornecedor('15266070716959', '2 Riscos', (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 17)));
INSERT INTO tb_fornecedor VALUES (tp_fornecedor('00511962674506', '9 - The Creative Shop', (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 18)));
INSERT INTO tb_fornecedor VALUES (tp_fornecedor('54879875533463', 'Active Media Solutions', (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 19)));
INSERT INTO tb_fornecedor VALUES (tp_fornecedor('89066057487277', 'Activooh', (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 20)));
INSERT INTO tb_fornecedor VALUES (tp_fornecedor('45965545899212', 'Addiction - Brands Rehab', (SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 21)));
 --Fim fornecedor


--Material
INSERT INTO tb_material VALUES (tp_material(seq_id_produto.nextval, 'Capa brochura', 1.2, to_date('27/03/2020' , 'dd/mm/yy')));
INSERT INTO tb_material VALUES (tp_material(seq_id_produto.nextval, 'Capa dura', 1.0, to_date('28/03/2018' , 'dd/mm/yy')));
INSERT INTO tb_material VALUES (tp_material(seq_id_produto.nextval, 'Capa Flexivel', 0.7, to_date('13/10/2016' , 'dd/mm/yy')));
INSERT INTO tb_material VALUES (tp_material(seq_id_produto.nextval, 'Plastico para Revestimento', 2.0, to_date('17/09/2015' , 'dd/mm/yy')));
INSERT INTO tb_material VALUES (tp_material(seq_id_produto.nextval, 'Verniz de maquina', 5.0, to_date('28/12/2014' , 'dd/mm/yy')));
INSERT INTO tb_material VALUES (tp_material(seq_id_produto.nextval, 'Verniz de alto brilho', 7.0, to_date('11/12/2014' , 'dd/mm/yy')));
--Fim material


--Campanha
INSERT INTO tb_campanha VALUES (tp_campanha(seq_id_produto.nextval, 'Campanha publicitaria para a UFPE', 15000.00, '2 meses'));
INSERT INTO tb_campanha VALUES (tp_campanha(seq_id_produto.nextval, 'vCampanha publicitaria para o CIn', 9000.00, '8 meses'));
INSERT INTO tb_campanha VALUES (tp_campanha(seq_id_produto.nextval, 'vCampanha publicitaria para o NUTES', 3000.00, '15 dias'));
INSERT INTO tb_campanha VALUES (tp_campanha(seq_id_produto.nextval, 'Campanha publicitaria para o RNP', 2500.00, '3 semanas'));
INSERT INTO tb_campanha VALUES (tp_campanha(seq_id_produto.nextval, 'Campanha publicitaria para Dilma', 10000.00, '45 horas'));
INSERT INTO tb_campanha VALUES (tp_campanha(seq_id_produto.nextval, 'Inauguracao do restaurante ComidaFREE', 4590.34, '1 ano'));
--fim Campanha

--Midia
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'GNT'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'Globo News'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'Sport TV'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'Multishow'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'ESPN'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'FOX'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'HBO'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'Band News'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'Globo'));
INSERT INTO tb_midia VALUES (tp_midia(seq_id_midia.nextval, 'Rede Record'));
--Fim midia

--Divulga
INSERT INTO tb_divulga VALUES (tp_divulga((SELECT REF(m) FROM tb_midia m WHERE m.id_midia = 1), (SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 7)));
INSERT INTO tb_divulga VALUES (tp_divulga((SELECT REF(m) FROM tb_midia m WHERE m.id_midia = 4), (SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 8)));
INSERT INTO tb_divulga VALUES (tp_divulga((SELECT REF(m) FROM tb_midia m WHERE m.id_midia = 5), (SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 9)));
INSERT INTO tb_divulga VALUES (tp_divulga((SELECT REF(m) FROM tb_midia m WHERE m.id_midia = 7), (SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 10)));
INSERT INTO tb_divulga VALUES (tp_divulga((SELECT REF(m) FROM tb_midia m WHERE m.id_midia = 9), (SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 11)));
INSERT INTO tb_divulga VALUES (tp_divulga((SELECT REF(m) FROM tb_midia m WHERE m.id_midia = 10), (SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 12)));
--Fim divulga


--Solicita
INSERT INTO tb_solicita VALUES (tp_solicita(100 , to_date('1/8/14' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '15266070716959'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '312.039.102-39'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 1) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 1))));
INSERT INTO tb_solicita VALUES (tp_solicita(40 , to_date('12/8/14' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '00511962674506'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '111.111.111-11'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 2) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 2))));
INSERT INTO tb_solicita VALUES (tp_solicita(88 , to_date('1/10/14' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '54879875533463'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '312.039.102-39'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 3) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 3))));
INSERT INTO tb_solicita VALUES (tp_solicita(48 , to_date('16/7/14' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '15266070716959'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '312.039.102-39'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 3) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 3))));
INSERT INTO tb_solicita VALUES (tp_solicita(63 , to_date('1/1/14' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '54879875533463'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '111.111.111-11'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 4) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 4))));
INSERT INTO tb_solicita VALUES (tp_solicita(180 , to_date('1/2/13' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '15266070716959'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '411.862.109-89'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 1) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 1))));
INSERT INTO tb_solicita VALUES (tp_solicita(89 , to_date('12/4/14' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '00511962674506'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '563.305.254-67'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 2) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 2))));
INSERT INTO tb_solicita VALUES (tp_solicita(321 , to_date('23/12/14' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '54879875533463'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '312.039.102-39'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 3) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 3))));
INSERT INTO tb_solicita VALUES (tp_solicita(309 , to_date('6/6/12' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '15266070716959'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '411.862.109-89'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 3) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 3))));
INSERT INTO tb_solicita VALUES (tp_solicita(12 , to_date('1/1/12' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '54879875533463'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '563.305.254-67'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 4) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 4))));
INSERT INTO tb_solicita VALUES (tp_solicita(100 , to_date('1/6/13' , 'dd/mm/yy'), (SELECT REF(f) FROM tb_fornecedor f WHERE f.cnpj = '15266070716959'), (SELECT REF(fu) FROM tb_funcionario fu WHERE fu.cpf = '411.862.109-89'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 2) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 2))));
--Fim Solicita

--Compra
INSERT INTO tb_compra VALUES (tp_compra(to_date('1/8/14' , 'dd/mm/yy'), 15, (SELECT REF(c) FROM tb_cliente c WHERE c.cpf = '785.895.165-47'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 1) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 1))));
INSERT INTO tb_compra VALUES (tp_compra(to_date('1/8/14' , 'dd/mm/yy'), 10, (SELECT REF(c) FROM tb_cliente c WHERE c.cpf = '785.895.165-47'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 2) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 2))));
INSERT INTO tb_compra VALUES (tp_compra(to_date('4/8/14' , 'dd/mm/yy'), 30, (SELECT REF(c) FROM tb_cliente c WHERE c.cpf = '517.987.951-87'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 3) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 3))));
INSERT INTO tb_compra VALUES (tp_compra(to_date('6/8/14' , 'dd/mm/yy'), 10, (SELECT REF(c) FROM tb_cliente c WHERE c.cpf = '517.987.951-87'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 4) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 4))));
INSERT INTO tb_compra VALUES (tp_compra(to_date('4/9/14' , 'dd/mm/yy'), 5, (SELECT REF(c) FROM tb_cliente c WHERE c.cpf = '338.158.833-22'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 4) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 4))));
INSERT INTO tb_compra VALUES (tp_compra(to_date('6/10/14' , 'dd/mm/yy'), 9, (SELECT REF(c) FROM tb_cliente c WHERE c.cpf = '338.158.833-22'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 5) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 5))));
INSERT INTO tb_compra VALUES (tp_compra(to_date('15/10/14' , 'dd/mm/yy'), 11, (SELECT REF(c) FROM tb_cliente c WHERE c.cpf = '659.573.052-73'), ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 6) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 6))));
--Fim compra

--PromoÃ§Ã£o
INSERT INTO tb_promocao VALUES (tp_promocao(to_date('18/03/2014' , 'dd/mm/yy'), to_date('20/12/2014' , 'dd/mm/yy'), 0.2, ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 1) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 1))));
INSERT INTO tb_promocao VALUES (tp_promocao(to_date('10/10/2014' , 'dd/mm/yy'), to_date('13/10/2014' , 'dd/mm/yy'), 0.4, ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 4) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 4))));
INSERT INTO tb_promocao VALUES (tp_promocao(to_date('21/11/2014' , 'dd/mm/yy'), to_date('22/12/2014' , 'dd/mm/yy'), 0.3, ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 9) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 9))));
INSERT INTO tb_promocao VALUES (tp_promocao(to_date('23/12/2014' , 'dd/mm/yy'), to_date('02/01/2015' , 'dd/mm/yy'), 0.6, ((SELECT REF(c) FROM tb_campanha c WHERE c.id_produto = 11) UNION (SELECT REF(m) FROM tb_material m WHERE m.id_produto = 11))));
--Fim promoÃ§Ã£o

