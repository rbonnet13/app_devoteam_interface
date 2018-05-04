package org.jboss.tools.example.springmvc.service;

import java.sql.*;


public class LoginService {
	
	public boolean check(String nom, String email) {
		
		String url="jdbc:mysql://172.30.94.253:3306/appdevoteam";
		String u="devoteam";
		String p="devoteam";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,u,p);
			PreparedStatement pst = con.prepareStatement("insert into Member values (1, nom=? , email=? , '0677642177')");
			pst.executeQuery();
		}catch(Exception e)
		{
			System.out.println(e);
		}
		
		return false;
		
	}

}
