package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.Bean.ProductBean;
import com.Dao.BuyProductDao;
@WebServlet("/buy")
public class BuyProductServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException {
		
		String pcode=(String)req.getParameter("pcode");
		
		ProductBean p=new BuyProductDao().buyProductDao(pcode);
		
		HttpSession session=req.getSession();
		session.setAttribute("pb", p);

        req.getRequestDispatcher("BuyProduct.jsp")
           .forward(req, res);
	}
}
