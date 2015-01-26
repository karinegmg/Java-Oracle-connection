package model;

/**
 * @author mra2
 *
 */

public class Client {

	private String cpf, name, date, email;
	private String[] phone;

	public Client(String cpf, String name, String date, String email,
			String[] phone) {
		this.cpf = cpf;
		this.name = name;
		this.date = date;
		this.email = email;
		this.phone = phone;
	}

	public String getCpf() {
		return cpf;
	}

	public String getDate() {
		return date;
	}

	public String getEmail() {
		return email;
	}

	public String getName() {
		return name;
	}

	public String[] getPhone() {
		return phone;
	}
}
