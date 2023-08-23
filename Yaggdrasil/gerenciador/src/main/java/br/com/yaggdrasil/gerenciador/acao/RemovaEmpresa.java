package br.com.yaggdrasil.gerenciador.acao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.yaggdrasil.gerenciador.modelo.Banco;

public class RemovaEmpresa implements Acao{
	
	
	public String executa(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		
		System.out.println("RemoveEmpresa dentro da classe");
		
		String paramid = request.getParameter("id");
		Integer id = Integer.valueOf(paramid);
		
		System.out.println(id);
		
		Banco banco = new Banco();
		banco.remove(id);
		
		return "redirect:entrada?acao=ListaEmpresas";
			
	}

}
