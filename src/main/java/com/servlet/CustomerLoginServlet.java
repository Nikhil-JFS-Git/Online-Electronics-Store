package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.RegistrationBean;
import com.Dao.CustomerLoginDao;
@WebServlet("/login")
public class CustomerLoginServlet extends HttpServlet{

	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		String usname=req.getParameter("uname");
		String pass=req.getParameter("upwd");
		
		RegistrationBean rb=new CustomerLoginDao().login(usname);
		
		if(rb==null) {
			req.setAttribute("msg", "Login failed Please Try Again !!");
			req.getRequestDispatcher("loginfail.jsp").forward(req, res);
		}
		else {
			
			HttpSession session=req.getSession();
			session.setAttribute("bean", rb);
			
			req.getRequestDispatcher("customerHome.jsp").forward(req, res);
			
		}
		
	}
}
