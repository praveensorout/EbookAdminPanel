package connection;

import java.sql.*;

public class Connect
{
	private String driver = "com.mysql.jdbc.Driver";
	private String database = "jdbc:mysql:///ebook";
	private String root = "root";
	private String password = "root123";
	
	public Connection getConnection()
	{
		try
		{
			Class.forName(driver);
			Connection con = DriverManager.getConnection(database,root,password);
			return con;
		}
		catch(SQLException e){}
		catch(ClassNotFoundException e){}
		return null;
	}
}