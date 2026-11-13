package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.Bean.ProductBean;

public class AddprodDAO {
	
	public int insertProd(ProductBean pb) {
		
		int rowCount=0;
		
		try {
			Connection con=DBConnect.getConnection();
			PreparedStatement pstm=con.prepareStatement("Insert into producttb values(?,?,?,?,?)");
			pstm.setString(1,pb.getP_code());
			pstm.setString(2, pb.getP_name());
			pstm.setString(3, pb.getP_company());
			pstm.setString(4, pb.getP_price());
			pstm.setString(5, pb.getP_Qty());
			
			rowCount =pstm.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return rowCount;
	}
}
