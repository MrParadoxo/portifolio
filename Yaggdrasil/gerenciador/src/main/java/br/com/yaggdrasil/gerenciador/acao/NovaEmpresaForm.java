package br.com.yaggdrasil.gerenciador.acao;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.yaggdrasil.gerenciador.modelo.Banco;
import br.com.yaggdrasil.gerenciador.modelo.Empresa;

public class NovaEmpresaForm implements Acao{
	
	
	public String executa(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		
System.out.println("Cadastrando nova empresa");
		
		return "forward:formNovaEmpresa.jsp";
		
//		//chamar o JSP
//		RequestDispatcher rd = request.getRequestDispatcher("/listaEmpresas");
//		request.setAttribute("empresa", empresa.getNome());
//		rd.forward(request, response);
		
		
		
	}

}
