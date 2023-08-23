
public class TesteGeteSet {
	
	
	public static void main(String[] args) {
		
		Conta conta = new Conta(1337 , 24226);
		
		System.out.println(conta.getNumero());
		
		
		Cliente rafael = new Cliente();
		conta.setTitular(rafael);
		
		
		rafael.setNome("Rafael Diego Holler");
		
		conta.setTitular(rafael);
		
		
		System.out.println(conta.getTitular().getNome());
		
		conta.getTitular().setProfissao("Desenvolvedor");
		
		Conta nubank = new Conta(0, 0);

		System.out.println(nubank.getNumero());
		
		System.out.println(nubank.getSaldo());
	
		
	}

}
