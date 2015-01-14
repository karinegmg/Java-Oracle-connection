package view;

import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.JButton;
import javax.swing.JLabel;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

/**
 * @author mra2
 *
 */
public class SearchFrame {

	private JFrame frame;
	private JTextField name;
	private JTextField cpf;

	public SearchFrame() {
		
		frame = new JFrame();
		frame.setTitle("Conectividade com JDBC");
		frame.setBounds(100, 100, 400, 200);
		frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		frame.setVisible(true);
		
		//label -> name
		name = new JTextField();
		name.setBounds(10, 30, 178, 20);
		name.setText("Nome");
		frame.getContentPane().add(name);
		name.setColumns(15);
		
		//label -> cpf
		cpf = new JTextField();
		cpf.setText("CPF");
		cpf.setColumns(15);
		cpf.setBounds(10, 64, 178, 20);
		frame.getContentPane().add(cpf);
		
		JButton button = new JButton("Buscar Cliente");
		button.setBounds(198, 63, 89, 23);
		frame.getContentPane().add(button);
		
		JLabel lblBuscarCliente = new JLabel("Buscar Cliente");
		lblBuscarCliente.setBounds(10, 11, 125, 14);
		frame.getContentPane().add(lblBuscarCliente);
		
		JButton bucar = new JButton("Buscar Cliente");
		bucar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
			}
		});
		
		bucar.setBounds(198, 31, 89, 23);
		frame.getContentPane().add(bucar);
	}
}
