package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.DeleteProductDao;
@WebServlet("/delete")
public class DeleteProductservlet extends HttpServlet{
protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session=req.getSession(false);
		if(session==null) {
			System.out.println("Session Expired");
			req.getRequestDispatcher("adminlogin.jsp");
		}
		else {
			int rowCount=new DeleteProductDao().deleteProduct(req.getParameter("pcode"));
			if(rowCount>0) {
				req.setAttribute("data","Product Has Been Deleted");
				req.getRequestDispatcher("DeleteProduct.jsp").forward(req, res);
			}
		}
	}
}
