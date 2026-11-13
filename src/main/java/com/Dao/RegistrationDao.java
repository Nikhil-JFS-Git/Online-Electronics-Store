package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Bean.RegistrationBean;

public class RegistrationDao {

	public int insertRecord(RegistrationBean rb) {
		
		int RowCount=0;
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement pstm=con.prepareStatement("Insert into CUSTOMER_REGISTRATION  values (?,?,?,?,?,?,?)");
			pstm.setString(1, rb.getUsername());
			pstm.setString(2, rb.getPassword());
			pstm.setString(3, rb.getFirstname());
			pstm.setString(4, rb.getLastname());
			pstm.setString(5, rb.getMailid());
			pstm.setString(6, rb.getMobile());
			pstm.setString(7, rb.getAddress());
			
			RowCount=pstm.executeUpdate();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return RowCount;
	}
}
