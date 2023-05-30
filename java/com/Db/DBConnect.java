package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
public class DBConnect {

	
	public static Connection conn;
	public static Connection getConn()
	{
		try {
			if(conn==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/E_Notes","root","");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
