package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Bean.Estore_Bean;

public class AdminLoginDao {
	
	public Estore_Bean checkLogin(String uname,String pwd) {
		
		Estore_Bean eb=null;
		try {
			Connection con=DBConnect.getConnection();
			PreparedStatement pstm=con.prepareStatement("Select * from admin where username=? and password=?");
			pstm.setString(1, uname);
			pstm.setString(2, pwd);
			
			ResultSet rs=pstm.executeQuery();
			
			if(rs.next()) {
				eb=new Estore_Bean();
				eb.setUsername(rs.getString(1));
				eb.setPassword(rs.getString(2));
				eb.setFirstName(rs.getString(3));
				eb.setLastName(rs.getString(4));
				eb.setAddress(rs.getString(5));
				eb.setMailId(rs.getString(6));
				eb.setPhone(rs.getString(7));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return eb;
	}
}
