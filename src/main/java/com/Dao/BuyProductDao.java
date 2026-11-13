package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Bean.ProductBean;

public class BuyProductDao {

	public ProductBean buyProductDao(String pcode) {
		ProductBean pb=null;
		
		try {
			Connection con=DBConnect.getConnection();
			PreparedStatement pstm=con.prepareStatement("Select * from producttb where pcode=?");
			pstm.setString(1, pcode);
			ResultSet rs=pstm.executeQuery();
			
			if(rs.next()) {
				pb=new ProductBean();
				pb.setP_code(rs.getString(1));
				pb.setP_name(rs.getString(2));
				pb.setP_company(rs.getString(3));
				pb.setP_price(rs.getString(4));
				pb.setP_Qty(rs.getString(5));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return pb;
	}
}
