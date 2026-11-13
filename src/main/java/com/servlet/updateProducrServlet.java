package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.ProductBean;
import com.Dao.UpdateProductDao;
@WebServlet("/update")
public class updateProducrServlet extends HttpServlet{

protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session=req.getSession(false);
		if(session==null) {
			System.out.println("Session Expired");
			req.getRequestDispatcher("adminlogin.jsp");
		}
		else {
			String pcode=req.getParameter("pcode");
			
			ArrayList<ProductBean> al=(ArrayList<ProductBean>) session.getAttribute("list");
			ProductBean pb=null;
			Iterator<ProductBean> i=al.iterator();
			while(i.hasNext()) {
				pb=i.next();
				if(pcode.equals(pb.getP_code())) {
					break;
				}
			}
			pb.setP_price(req.getParameter("pprice"));
			pb.setP_Qty(req.getParameter("pqty"));
			int rowCount=new UpdateProductDao().updateProduct(pb);
			if(rowCount>0) {
				req.setAttribute("data", "Products Updated");
				req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
				
			}
		}
	}
}
