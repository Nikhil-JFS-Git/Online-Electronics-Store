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
@WebServlet("/edit")
public class EditProductServlet extends HttpServlet{
	@Override
		protected void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException {
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
				session.setAttribute("pbean", pb);
				
				req.getRequestDispatcher("EditProduct.jsp").forward(req, res);
			}
		}

	}
	

