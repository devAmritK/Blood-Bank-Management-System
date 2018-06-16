package Utility;

import java.sql.*;

public class DbConnection {
	public static Connection con=null;
	
	public static Connection getConnection()
	{
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/BloodBankManagement","root","");
			//Statement st=con.createStatement();
		System.out.println("connection success");
			System.out.println(con);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return con;
		
	} 
	
	public static void main(String args[])
	{
		
		System.out.println(DbConnection.getConnection());
	}
}