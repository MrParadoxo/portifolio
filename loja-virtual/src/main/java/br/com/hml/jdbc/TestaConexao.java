package br.com.hml.jdbc;
import java.sql.Connection;
import java.sql.SQLException;

public class TestaConexao {
	
	public static void main(String[] args) throws SQLException {


		ConnectionFactory connectionFactory = new ConnectionFactory();
		
		Connection con = connectionFactory.conexao();
		
		System.out.println("Fechando Conexão!");
		
		con.close();
		
		
	}

}
