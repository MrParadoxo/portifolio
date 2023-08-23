package novobanco;

public class TestaBanco {

	public static void main(String[] args) {
		
		Cliente paulo = new Cliente();
		
		
		paulo.nome = "Paulo Silvera";
		paulo.cpf = "222.222.222-48";
		paulo.profissao = "desenvolvedor";
		
		Conta contaDoPaulo = new Conta();
		contaDoPaulo.deposita(100);
		
		
		contaDoPaulo.titular = paulo;
		
		System.out.println(contaDoPaulo.titular.nome);
		
		
	}
	
}
