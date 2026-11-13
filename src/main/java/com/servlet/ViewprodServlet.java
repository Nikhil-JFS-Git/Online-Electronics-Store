package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.ProductBean;
import com.Dao.ViewProdDao;
@WebServlet("/view")
public class ViewprodServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session =req.getSession();
		if(session==null) {
			System.out.println("Session Expired");
			req.getRequestDispatcher("adminlogin.html").forward(req, res);
		}
		else {
		ArrayList<ProductBean> list=new ViewProdDao().viewData();
		session.setAttribute("list", list);
		req.getRequestDispatcher("ViewProd.jsp").forward(req, res);
		}
	}
}
