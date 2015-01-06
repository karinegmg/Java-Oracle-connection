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

/**
 * @author mra2
 *
 */
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
		setBounds(0, 0, 250, 260);
		setLocationRelativeTo(null);
		panel = new JPanel();
		panel.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(panel);
		panel.setLayout(null);
		
		//buttons
		JButton searchBtnClient = new JButton("Search Client");
		JButton insertBtnClient = new JButton("Insert Client");
		
		searchBtnClient.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				new SearchFrame();
			}
		});
		
		searchBtnClient.setBounds(30, 10, 200, 100);
		panel.add(searchBtnClient);
	
		insertBtnClient.addActionListener(new ActionBtnInsert());
		insertBtnClient.setBounds(30, 130, 200, 100);
		panel.add(insertBtnClient);
	}
}
