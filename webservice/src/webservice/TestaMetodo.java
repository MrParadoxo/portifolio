package webservice;

public class TestaMetodo {
	
	public static void main(String[] args) {
		
		Conta conta = new Conta();
		conta.saldo = 100;
		
		conta.deposita(100);
	System.out.println(conta.saldo);
	
	boolean conseguiuRetiirar = conta.saca(20);
	System.out.println(conta.saldo);
	System.out.println(conseguiuRetiirar);
	
	
	
	Conta conta2 = new Conta();
	
	conta2.deposita(1000);
	System.out.println(conta2.saldo);
	
	if(conta2.tranfere(3000, conta)) {
		System.out.println("tranferencia com sucesso");
	}else {
		System.out.println("Faltou dinheiro");
	}
	System.out.println(conta2.saldo);
	System.out.println(conta.saldo);
	

	}

	
}
