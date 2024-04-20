package com.hotel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao 
{
	String sql = "select*from logins where uname=? and pass=?";
	String url="jdbc:mysql://localhost:3306/login";
	String username="root";
	String password="admin";
	//database for login page
	public boolean checkDetails(String uname,String pass) throws SQLException
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	//database for signup page
	public boolean storeSignupData(String uname, String pass, String email) {
		
		  String sql = "INSERT INTO logins (uname, pass, email) VALUES (?, ?, ?)";

	        try (
	        	//Class.forName("com.mysql.jdbc.Driver");
	        	Connection con = DriverManager.getConnection(url, username, password);
	             PreparedStatement st = con.prepareStatement(sql)) {
	            st.setString(1, uname);
	            st.setString(2, pass);
	            st.setString(3, email);

	            int rowsAffected = st.executeUpdate();
	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
		// TODO Auto-generated method stub
		
	}
	

}
