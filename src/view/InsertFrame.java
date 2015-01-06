package view;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import model.Client;
import controller.Engine;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

import java.awt.Font;
import java.sql.SQLException;

import javax.swing.JFormattedTextField;

/**
 * @author mra2
 *
 */
public class InsertFrame {

	private JFrame frame;
	private JTextField name, cpf;
	private static Engine in;
	
	static {
		in = new Engine();
	}

	public void setVisible(boolean v) {
		this.frame.setVisible(v);
	}

	public InsertFrame() {
		
		frame = new JFrame();
		frame.setTitle("IF685 - Conectividade com JDBC ~> Insert");
		frame.setBounds(100, 100, 600, 352);
		frame.setLocationByPlatform(true);
		frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		frame.setVisible(true);

		name = new JTextField();
		name.setBounds(10, 53, 178, 20);
		frame.getContentPane().add(name);
		name.setColumns(15);

		JLabel lblBuscarCliente = new JLabel("Insert Client");
		lblBuscarCliente.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblBuscarCliente.setBounds(10, 11, 227, 14);
		frame.getContentPane().add(lblBuscarCliente);

		JLabel lblNome = new JLabel("Name");
		lblNome.setBounds(10, 36, 46, 14);
		frame.getContentPane().add(lblNome);

		cpf = new JTextField();
		cpf.setColumns(15);
		cpf.setBounds(10, 101, 178, 20);
		frame.getContentPane().add(cpf);

		JLabel lblCpf = new JLabel("CPF");
		lblCpf.setBounds(10, 84, 46, 14);
		frame.getContentPane().add(lblCpf);

		JLabel lblTelefone = new JLabel("Phone");
		lblTelefone.setBounds(10, 132, 178, 14);
		frame.getContentPane().add(lblTelefone);

		final JFormattedTextField clientTel1 = new JFormattedTextField();
		clientTel1.setBounds(10, 157, 178, 20);
		frame.getContentPane().add(clientTel1);

		JButton clientBtnInsert = new JButton("Insert Client");
		
		clientBtnInsert.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String[] telefones = new String[3];
				telefones[0] = clientTel1.getText();
				
				Client novoCliente = new Client(cpf.getText(),
						name.getText(), telefones);

				try {
					in.Insert(novoCliente);
				} catch (ClassNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}

			}
		});
		
		clientBtnInsert.setBounds(10, 268, 178, 23);
		frame.getContentPane().add(clientBtnInsert);
	}
}
