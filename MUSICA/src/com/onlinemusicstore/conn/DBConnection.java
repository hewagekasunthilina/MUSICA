package com.onlinemusicstore.conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public DBConnection() {
		
	}
	
	public static Connection getDBconnection() throws ClassNotFoundException, SQLException{
		
		//Server connection parameters
		String driver="com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/musica";
		String username = "root";
		String password = "";
		
		
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, username, password);
		if(conn!=null) {
			System.out.println("Connected No Errors");
		}
		
		else {
			System.out.println("Errors With Connection");
		}
		return conn;
	}
}
