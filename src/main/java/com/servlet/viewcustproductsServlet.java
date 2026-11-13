package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.ProductBean;
import com.Dao.ViewCustprodDao;
@WebServlet("/viewcustproducts")
public class viewcustproductsServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		ArrayList<ProductBean> al=new ViewCustprodDao().view();
		
		req.setAttribute("list", al);
		req.getRequestDispatcher("viewcustProd.jsp").forward(req, res);
	}
}
