package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.RegistrationBean;
import com.Dao.RegistrationDao;
@WebServlet("/reg")
public class CustomerRegistrationServlet  extends HttpServlet{

	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		
		RegistrationBean rb=new RegistrationBean();
		
		rb.setUsername(req.getParameter("usname"));
		rb.setPassword(req.getParameter("pwd"));
		rb.setFirstname(req.getParameter("fname"));
		rb.setLastname(req.getParameter("lname"));
		rb.setAddress(req.getParameter("add"));
		rb.setMailid(req.getParameter("mid"));
		rb.setMobile(req.getParameter("mobile"));
		
		int RowCount=new RegistrationDao().insertRecord(rb);
		
		if(RowCount>0) {
			
			
			
			req.setAttribute("msg", "Customer Registration Successfull :)");
			req.getRequestDispatcher("Registration.jsp").forward(req, res);
		}
		else {
			req.setAttribute("msg", "Registration Failed please Try Again");
			req.getRequestDispatcher("Registration.jsp").forward(req, res);
		}
		
	}
}
