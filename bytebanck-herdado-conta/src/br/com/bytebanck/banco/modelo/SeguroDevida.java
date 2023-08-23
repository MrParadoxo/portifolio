package br.com.bytebanck.banco.modelo;

public class SeguroDevida implements Tributavel {

	@Override
	public double getValorImposto() {
		return 42;
	}

}
