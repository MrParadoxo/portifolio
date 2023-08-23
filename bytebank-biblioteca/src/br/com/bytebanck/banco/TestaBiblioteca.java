package br.com.bytebanck.banco;

import br.com.bytebanck.banco.modelo.Conta;
import br.com.bytebanck.banco.modelo.ContaCorrente;

public class TestaBiblioteca {
	
	
	public static void main(String[] args) {
		
		
		Conta c = new ContaCorrente(123,222);
		
		c.deposita(100);
		
		System.out.println(c.getSaldo());
		
	}

	
	
}
