package view;

import java.awt.EventQueue;
import view.InsertFrame;
import view.SearchFrame;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class MainFrame extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel panel;
	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MainFrame frame = new MainFrame();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	static class ActionBtnInsert implements ActionListener{

		@Override
		public void actionPerformed(ActionEvent arg0) {
			new InsertFrame();
		}
		
	}

	public MainFrame() {
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 600);
		panel = new JPanel();
		panel.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(panel);
		panel.setLayout(null);
		JButton searchBtnClient = new JButton("Search Client");
		
		searchBtnClient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				new SearchFrame();
			}
		});
		
		searchBtnClient.setBounds(265, 68, 236, 80);
		panel.add(searchBtnClient);
		
		JButton btnCadastrarCliente= new JButton("Insert Client");
		btnCadastrarCliente.addActionListener(new ActionBtnInsert());
		btnCadastrarCliente.setBounds(265, 218, 236, 80);
		panel.add(btnCadastrarCliente);
	}
}
