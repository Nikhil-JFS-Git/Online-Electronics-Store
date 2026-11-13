package com.Bean;

import java.io.Serializable;

public class ProductBean implements Serializable{
	private  String P_code;
	private String p_name;
	private String p_company;
	private String p_price;
	private String p_Qty;
	
	@Override
	public String toString() {
		return "ProductBean [P_code=" + P_code + ", p_name=" + p_name + ", p_company=" + p_company + ", p_price="
				+ p_price + ", p_Qty=" + p_Qty + "]";
	}

	public ProductBean() {}
	
	public String getP_code() {
		return P_code;
	}
	public void setP_code(String p_code) {
		P_code = p_code;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_company() {
		return p_company;
	}
	public void setP_company(String p_company) {
		this.p_company = p_company;
	}
	public String getP_price() {
		return p_price;
	}
	public void setP_price(String p_price) {
		this.p_price = p_price;
	}
	public String getP_Qty() {
		return p_Qty;
	}
	public void setP_Qty(String p_Qty) {
		this.p_Qty = p_Qty;
	}
}
