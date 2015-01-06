package model;

public class Client {

	private String CPF, nome;
	private String[] telefones;

	public Client(String cPF, String nome, String[] telefones) {
		CPF = cPF;
		this.nome = nome;
		this.telefones = telefones;
	}

	public String getCPF() {
		return CPF;
	}

	public String getNome() {
		return nome;
	}

	public String[] getTelefones() {
		return telefones;
	}
}
