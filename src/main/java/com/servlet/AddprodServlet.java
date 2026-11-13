package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.ProductBean;
import com.Dao.AddprodDAO;
@WebServlet("/Aps")
public class AddprodServlet extends HttpServlet{

	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session =req.getSession();
		if(session==null) {
			System.out.println("Session Expired");
			req.getRequestDispatcher("adminlogin.html").forward(req, res);
		}
		else {
			ProductBean pb=new ProductBean();
			pb.setP_code(req.getParameter("pcode"));
			pb.setP_name(req.getParameter("pname"));
			pb.setP_company(req.getParameter("pcomp"));
			pb.setP_price(req.getParameter("pprice"));
			pb.setP_Qty(req.getParameter("pquan"));
			
			AddprodDAO obj=new AddprodDAO();
			
			int RowCount=obj.insertProd(pb);
			
			if(RowCount>0) {
				req.setAttribute("msg",
					    "✅ Product \"" + pb.getP_name() + "\" added successfully!");
				req.getRequestDispatcher("Addprod.jsp").forward(req, res);
			}
			else {
				req.setAttribute("msg", "❌ Failed to add product. Please try again.");
				req.getRequestDispatcher("Addprod.jsp").forward(req, res);
			}
		}
	}
	
}
