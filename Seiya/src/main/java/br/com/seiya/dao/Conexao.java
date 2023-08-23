package br.com.seiya.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	public Connection conexao() throws SQLException {
		return DriverManager.getConnection("jdbc:postgresql://localhost:5432/seyadb", "postgres" ,"Rally0509!");
	}

}
