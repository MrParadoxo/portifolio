package br.com.yaggdrasil.gerenciador.modelo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Empresa> lista = new ArrayList<>();
	private static List<Usuario> listausuarios = new ArrayList<>();
	private static Integer chave = 1;
	
	static {
		Empresa empresa = new Empresa();
		empresa.setId(chave++);
		empresa.setNome("Alura");
		Empresa empresa2 = new Empresa();
		empresa2.setId(chave++);
		empresa2.setNome("Caelum");
		lista.add(empresa);
		lista.add(empresa2);
		
		
		Usuario u1 = new Usuario();
		u1.setLogin("Rafael");
		u1.setSenha("123");
		
		Usuario u2 = new Usuario();
		u2.setLogin("Cassia");
		u2.setSenha("123");
		
		
		listausuarios.add(u1);
		listausuarios.add(u2);
		
	}
	
	
	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chave++);
		Banco.lista.add(empresa);
	}

	
	public List<Empresa> getEmpresas(){
		return Banco.lista;
	}


	public void remove(Integer id) {
		
		Iterator<Empresa> it = lista.iterator();
		
		while (it.hasNext()){
			Empresa emp = it.next();
			if(emp.getId() == id) {
				it.remove();
		}
		
	}
}


	public Empresa buscaEmpresa(Integer id) {
		for (Empresa empresa : lista) {
			if(empresa.getId() == id) {
				return empresa;
			}
		}
		return null;
	}


	public Usuario existeUsuario(String login, String senha) {
		for(Usuario u : listausuarios) {
			if(u.ehIgual(login, senha)) {
				return u;
			}
		}
		return null;
	}
}
