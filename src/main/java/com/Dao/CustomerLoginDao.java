package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Bean.RegistrationBean;

public class CustomerLoginDao {

	public RegistrationBean login(String username) {
		
		RegistrationBean rb=null;
		
		try {
			Connection con=DBConnect.getConnection();
			PreparedStatement pstm=con.prepareStatement("select * from CUSTOMER_REGISTRATION where username=?");
			pstm.setString(1, username);
			ResultSet rs=pstm.executeQuery();
			
			if(rs.next()) {
				rb=new RegistrationBean();
			rb.setUsername(rs.getString(1));
			rb.setPassword(rs.getString(2));
			rb.setFirstname(rs.getString(3));
			rb.setLastname(rs.getString(4));
			rb.setMailid(rs.getString(5));
			rb.setMobile(rs.getString(6));
			rb.setAddress(rs.getString(7));
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return rb;
	}
}
