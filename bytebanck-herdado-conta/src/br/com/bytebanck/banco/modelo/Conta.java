package br.com.bytebanck.banco.modelo;

/**
 * Classe representa a moldura de uma conta.
 * 
 * 
 * @author Rafael Diego Holler
 * @version 1.0
 */


public abstract class Conta {
	
	protected double saldo;
	private int agencia;
	private int numero;
	private Cliente titular;
	private static int total; 
	
	public Conta(int agencia, int numero) {
		total++;
		System.out.println("o total de contas é "+ total);
		this.agencia = agencia;
		this.numero = numero;
		System.out.println("estou criando uma conta " + agencia);
	}
	
	public abstract void  deposita(double valor);
	
	
	public void saca (double valor) throws SaldoInsuficienteExepition {
		
		if(this.saldo < valor) {	
			throw new SaldoInsuficienteExepition("Saldo: " + this.saldo + " Valor: " + valor);
		}
		
		this.saldo -= valor;
	}
	
	public void tranfere(double valor, Conta destino) throws SaldoInsuficienteExepition{
		this.saca(valor);
		destino.deposita(valor);
		
	}
	
	
	public double getSaldo(){
		return this.saldo;
		
	}
	
	public int getNumero() {
		return this.numero;
	}
	
	public void setNumero(int numero) {
	
		this.numero = numero;
	}
	
	public int getAgencia() {
		return this.agencia;
	}
	
	public void setAgencia(int agencia) {
		
		if(agencia <= 0) {
			System.out.println("Não pode valor menos = 0");
			return;
		}
		this.agencia = agencia;
	}
	
	
	public void setTitular(Cliente titular) {
		this.titular = titular;
	}
	
	public Cliente getTitular() {
		return titular;
	}
	
	public static int getTotal() {
		return total;
	}
	
}
