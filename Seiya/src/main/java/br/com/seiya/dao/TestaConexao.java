package br.com.seiya.dao;

import java.sql.Connection;
import java.sql.SQLException;

public class TestaConexao {

	public static void main(String[] args) throws SQLException {
		
		
		Conexao conexao = new Conexao();
		
		Connection con = conexao.conexao();
		
		System.out.println(con);
		
		con.close();
		
		
	}
	
}
