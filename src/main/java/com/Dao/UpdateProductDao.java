package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Bean.ProductBean;

public class UpdateProductDao {
	public int updateProduct(ProductBean pb) {
		int  rowCount=0;
		try {
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement("update producttb set pprice=?,pqty=? where pcode=?");
			ps.setString(1, pb.getP_price());
			ps.setString(2, pb.getP_Qty());
			ps.setString(3, pb.getP_code());
			rowCount=ps.executeUpdate();
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	}
}
