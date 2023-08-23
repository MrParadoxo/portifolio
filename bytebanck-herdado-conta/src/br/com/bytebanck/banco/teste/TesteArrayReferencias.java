package br.com.bytebanck.banco.teste;

import br.com.bytebanck.banco.modelo.Conta;
import br.com.bytebanck.banco.modelo.ContaCorrente;
import br.com.bytebanck.banco.modelo.ContaPoupanca;

public class TesteArrayReferencias {

	public static void main(String[] args) {

		
		
		Conta[] contas =  new Conta[5];
		
		ContaCorrente cc1 = new ContaCorrente(22,11);
		
		contas[0] = cc1;
		
		ContaPoupanca cc2 = new ContaPoupanca(22,12);
		
		contas[1] = cc2;
		
		System.out.println(contas[1].getNumero() );
		Conta ref = (ContaPoupanca) contas[1];
		System.out.println(ref.getNumero());
		
	}

}
