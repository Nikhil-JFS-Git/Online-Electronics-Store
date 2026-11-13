package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Bean.ProductBean;

public class ViewProdDao {
	
	ArrayList<ProductBean> al=new ArrayList<ProductBean>();
	
	public ArrayList<ProductBean> viewData(){
	
	try {
		Connection con=DBConnect.getConnection();
		PreparedStatement pstm=con.prepareStatement("Select * from producttb");
		ResultSet rs=pstm.executeQuery();
		while(rs.next()) {
			ProductBean pb=new ProductBean();
			pb.setP_code(rs.getString(1));
			pb.setP_name(rs.getString(2));
			pb.setP_company(rs.getString(3));
			pb.setP_price(rs.getString(4));
			pb.setP_Qty(rs.getString(5));
			al.add(pb);	
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return al;
	}
}
