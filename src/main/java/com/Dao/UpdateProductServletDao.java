package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductServletDao {

	public int Update(String pcode,int reqQty) {
		
		int rowCount=0;
		
		try {
			Connection con=DBConnect.getConnection();
			PreparedStatement pstm=con.prepareStatement("Update producttb set pqty=pqty-? where pcode=? and pqty>=?");
			pstm.setInt(1, reqQty);
			pstm.setString(2, pcode);
			pstm.setInt(3, reqQty);
			
			rowCount=pstm.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	}
}
