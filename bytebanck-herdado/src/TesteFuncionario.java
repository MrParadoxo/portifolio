
public class TesteFuncionario {
	
	public static void main(String[] args) {
		
		Funcionario nico = new Gerente();
		
		nico.setNome("Nico");
		nico.setCpf(123);
		nico.setSalario(1200);		
		
		System.out.println(nico.getNome());
		System.out.println(nico.getBonificacao());
	}

}
