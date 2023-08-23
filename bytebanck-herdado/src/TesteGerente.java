
public class TesteGerente {

	public static void main(String[] args) {
		Gerente g1 = new Gerente();
		g1.setNome("Marco");
		g1.setCpf(0);
		g1.setSalario(1000);
		
		
		System.out.println(g1.getSalario());
		System.out.println(g1.getBonificacao());
		System.out.println(g1.getCpf());
		System.out.println(g1.getNome());
		
	g1.setSenha(2222);
	boolean autenticou = g1.autentica(2222);

	System.out.println(autenticou);
		
		System.out.println(g1.getBonificacao());
		
		
		
		
	}

}
