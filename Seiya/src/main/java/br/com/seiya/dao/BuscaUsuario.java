package br.com.seiya.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BuscaUsuario {

	public static void main(String[] args) throws SQLException {

		Conexao conexao = new Conexao();
		Connection con = conexao.conexao();

		PreparedStatement stm = con.prepareStatement("SELECT ID, LOGIN, NOME FROM USUARIO");
		stm.execute();

		ResultSet rst = stm.getResultSet();

		while (rst.next()) {
			Integer id = rst.getInt("ID");
			System.out.println(id);
			String login = rst.getString("LOGIN");
			System.out.println(login);
			String nome = rst.getString("NOME");
			System.out.println(nome);
		}

		rst.close();
		stm.close();
		con.close();

	}

}
