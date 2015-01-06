package view;

import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JLabel;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class SearchFrame {

	private JFrame frame;
	private JTextField name;
	private JTextField cpf;

	public SearchFrame() {
		
		frame = new JFrame();
		frame.setTitle("IF685 - Conectividade com JDBC ~> Query");
		frame.setBounds(100, 100, 600, 400);
		frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		frame.setVisible(true);
		
		name = new JTextField();
		name.setBounds(10, 32, 178, 20);
		name.setText("By name");
		frame.getContentPane().add(name);
		name.setColumns(15);
		
		JButton bucar = new JButton("Search");
		bucar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		bucar.setBounds(198, 31, 89, 23);
		frame.getContentPane().add(bucar);
		
		JLabel lblBuscarCliente = new JLabel("Search Client");
		lblBuscarCliente.setBounds(10, 11, 125, 14);
		frame.getContentPane().add(lblBuscarCliente);
		
		cpf = new JTextField();
		cpf.setText("By CPF");
		cpf.setColumns(15);
		cpf.setBounds(10, 64, 178, 20);
		frame.getContentPane().add(cpf);
		
		JButton button = new JButton("Search");
		button.setBounds(198, 63, 89, 23);
		frame.getContentPane().add(button);
	}
}
