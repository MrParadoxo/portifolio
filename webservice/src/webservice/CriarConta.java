package webservice;

public class CriarConta {

	public static void main(String[] args) {
		
		Conta Conta1 = new Conta();
		Conta1.saldo = 200;
		System.out.println(Conta1.saldo);
		
		Conta1.saldo += 100;
		
		System.out.println(Conta1.saldo);
		
		
		Conta Conta2 = new Conta();
		Conta2.saldo = 100;
		System.out.println(Conta2.saldo);
		
		Conta2.saldo += 100;
		System.out.println(Conta2.saldo);
		
	}
	
}
