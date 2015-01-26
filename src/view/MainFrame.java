package view;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

/**
 * @author mra2
 *
 */
public class MainFrame extends JFrame {

	static class ActionBtnInsert implements ActionListener{

		@Override
		public void actionPerformed(ActionEvent arg0) {
			new InsertFrame();
		}	
	}
	private static final long serialVersionUID = 1L;
	
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			@Override
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
	
	private JPanel panel;

	public MainFrame() {
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(0, 0, 250, 260);
		setLocationRelativeTo(null);
		panel = new JPanel();
		panel.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(panel);
		panel.setLayout(null);
		
		//label -> inserir
		JButton insertBtnClient = new JButton("Inserir Cliente");
		insertBtnClient.addActionListener(new ActionBtnInsert());
		insertBtnClient.setBounds(30, 10, 200, 100);
		panel.add(insertBtnClient);
		
		//label -> search
		JButton searchBtnClient = new JButton("Buscar Cliente");
		searchBtnClient.setBounds(30, 110, 200, 100);
		panel.add(searchBtnClient);
		
		searchBtnClient.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				new SearchFrame();
			}
		});	
	}
}
