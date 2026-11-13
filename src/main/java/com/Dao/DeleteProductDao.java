package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDao {
	public int deleteProduct(String code) {
		int rowCount=0;
		try {
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from producttb where Pcode=?");
			ps.setString(1, code);
			rowCount=ps.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	}
}
