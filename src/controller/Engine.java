package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import model.Client;

/**
 * @author mra2
 * 
 */

public class Engine {

	static final String driver = "oracle.jdbc.driver.OracleDriver";

	static final String server = "oracle11g.cin.ufpe.br";
	static final String port = "1521";
	static final String service = "xe";

	static final String instance = "Instance01";
	static final String username = "g142if685cc_eq05";
	static final String password = "gaikyaktup7";
	static final String conexao = "oracle11g_Instance01";

	static final String URL = "jdbc:oracle:thin:@" + server + port + service;

	public static Connection connectToDatabase(String username, String password) {

		Connection con = null;

		try {
			// Load the JDBC driver
			Class.forName(driver);
			// Create a connection to the database
			con = DriverManager.getConnection(URL, username, password);
		} catch (ClassNotFoundException exc1) {
			exc1.printStackTrace();
		} catch (SQLException exc2) {
			exc2.printStackTrace();
		}

		return con;
	}

	public void Insert(Client c) throws SQLException, ClassNotFoundException {

		// Ex: INSERT INTO tb_cliente VALUES(tp_cliente('785.895.165-47', 'Jair
		// Bolsonaro', '12/12/1970', EMPTY_BLOB(),
		// tp_contato('jairbolsonaro@email.com',
		// tp_va_telefones(tp_telefone('81', '68011620'))),(SELECT REF(e) FROM
		// tb_endereco e WHERE e.id_endereco = 3), (SELECT REF(f) FROM
		// tb_funcionario f WHERE f.cpf ='510.362.857-78')));

		int count = 0;
		Connection con = connectToDatabase(username, password);
		Statement stmt = con.createStatement();

		String[] telefones = c.getTelefones();
		String t = telefones[count++];

		String i = "INSERT INTO tb_cliente VALUES(tp_cliente('"
				+ c.getCPF()
				+ "', '"
				+ c.getNome()
				+ "', '12/12/1970', EMPTY_BLOB(), tp_contato('jairbolsonaro@email.com', tp_va_telefones(tp_telefone("
				+ t
				+ "'))),(SELECT REF(e) FROM tb_endereco e WHERE e.id_endereco = 3), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf ='510.362.857-78')));";

		stmt.executeQuery(i);
		stmt.close();
		con.close();
	}
}
