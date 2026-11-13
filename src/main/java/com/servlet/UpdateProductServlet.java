package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.ProductBean;
import com.Dao.UpdateProductServletDao;

@WebServlet("/updatecustproduct")
public class UpdateProductServlet extends HttpServlet{

	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		
		HttpSession session=req.getSession(false);
		ProductBean pb=(ProductBean)session.getAttribute("pb");
		
		String pcode=(String)req.getParameter("pcode");
		
		int requiredqty=(Integer.parseInt(req.getParameter("rqty")));
		
		
		
		int availableqty = Integer.parseInt(pb.getP_Qty());
		
		
		
		if(availableqty>=requiredqty) {
			
			int RowCount= new UpdateProductServletDao().Update(pcode,requiredqty);
			
			if(RowCount>0) {
			int price=Integer.parseInt(pb.getP_price());
			int tbill=requiredqty*price;
			req.setAttribute("bill", tbill);
			req.setAttribute("msg", "Order is Placed Successfully");
			req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);
			}
			
			else {
				req.setAttribute("msg", "Unable to place order.");
				req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);
			}
			
		}
		
		else {
			 req.setAttribute("msg","Insufficient stock!");
			 req.getRequestDispatcher("OrderConfirmed.jsp").forward(req, res);
		}
	}
}
