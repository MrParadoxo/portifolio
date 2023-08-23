package br.com.bytebanck.banco.teste;

import br.com.bytebanck.banco.modelo.Conta;
import br.com.bytebanck.banco.modelo.ContaCorrente;
import br.com.bytebanck.banco.modelo.SaldoInsuficienteExepition;

public class TesteSaca {

	public static void main(String[] args) {
		
		Conta c = new ContaCorrente(111, 222);
		
		c.deposita(200);
		try {
			c.saca(300);
		}catch(SaldoInsuficienteExepition ex){
			
			System.out.println("EX: " + ex.getMessage());
		}
		
		
		

		
		System.out.println(c.getSaldo());
		
	}
	
}
