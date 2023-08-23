package br.com.bytebanck.banco.teste;

import br.com.bytebanck.banco.modelo.CalculadorDeImposto;
import br.com.bytebanck.banco.modelo.ContaCorrente;
import br.com.bytebanck.banco.modelo.SeguroDevida;

public class TesteTributaveis {

	public static void main(String[] args) {
		
		
		ContaCorrente cc = new ContaCorrente(222,222);
		cc.deposita(100);
		
		SeguroDevida sv = new SeguroDevida();
		
		CalculadorDeImposto calc = new CalculadorDeImposto();
		calc.registra(cc);
		calc.registra(sv);
		
		System.out.println(calc.getTotalImposto() );
	}

}
