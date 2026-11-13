
package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.Estore_Bean;
import com.Dao.AdminLoginDao;
@WebServlet("/Login")
public class AdminLoginServlet extends HttpServlet{

	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		
		AdminLoginDao obj=new AdminLoginDao();
		Estore_Bean eb=obj.checkLogin(req.getParameter("uname"),req.getParameter("upwd"));
		if(eb==null) {
			req.getRequestDispatcher("adminlogin.html").forward(req, res);
		}
		else {
			HttpSession session=req.getSession();
			session.setAttribute("adminbean", eb);
			req.getRequestDispatcher("adminHome.jsp").forward(req, res);
			
		}
	}
}
