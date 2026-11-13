<%@page import="java.util.Iterator"%>
<%@page import="com.Bean.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Products — E-Store</title>
</head>
<body style="margin:0;padding:0;min-height:100vh;background:linear-gradient(180deg,#071024,#0f172a);color:#fff;font-family:Inter,system-ui,Arial;">
    <header style="padding:18px 28px;display:flex;justify-content:space-between;align-items:center;">
        <a href="index.html" style="display:flex;align-items:center;color:#fff;text-decoration:none;gap:10px;">
            <div style="width:44px;height:44px;border-radius:8px;background:linear-gradient(135deg,#2563eb,#06b6d4);display:flex;align-items:center;justify-content:center;font-weight:800;">ES</div>
            <div style="font-weight:700;">E-Store</div>
        </a>
        <nav>
            <a href="adminHome.jsp" style="color:rgba(255,255,255,0.9);text-decoration:none;">Admin</a>
        </nav>
    </header>
    <main style="max-width:1100px;margin:28px auto;padding:18px;">
        <div style="background:#fff;padding:20px;border-radius:12px;color:#0f172a;">
            <h2 style="margin-bottom:12px;">Product List</h2>
            <%
                ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("list");
                if(al==null || al.size()==0){
            %>
                <div style="text-align:center;color:red;font-size:18px;padding:16px;">Data is Not Available</div>
            <%
                } else {
            %>
            <table style="width:100%;border-collapse:collapse;">
                <tr>
                    <th style="background:#2563eb;color:#fff;padding:12px;text-align:center;">Code</th>
                    <th style="background:#2563eb;color:#fff;padding:12px;text-align:center;">Name</th>
                    <th style="background:#2563eb;color:#fff;padding:12px;text-align:center;">Company</th>
                    <th style="background:#2563eb;color:#fff;padding:12px;text-align:center;">Price</th>
                    <th style="background:#2563eb;color:#fff;padding:12px;text-align:center;">Quantity</th>
                    <th style="background:#2563eb;color:#fff;padding:12px;text-align:center;">Edit</th>
                    <th style="background:#2563eb;color:#fff;padding:12px;text-align:center;">Delete</th>
                </tr>
                <%
                    for(ProductBean p:al){
                %>
                <tr>
                    <td style="padding:12px;text-align:center;border-bottom:1px solid #eee;"> <%=p.getP_code()%> </td>
                    <td style="padding:12px;text-align:center;border-bottom:1px solid #eee;"> <%=p.getP_name()%> </td>
                    <td style="padding:12px;text-align:center;border-bottom:1px solid #eee;"> <%=p.getP_company()%> </td>
                    <td style="padding:12px;text-align:center;border-bottom:1px solid #eee;">₹ <%=p.getP_price()%></td>
                    <td style="padding:12px;text-align:center;border-bottom:1px solid #eee;"> <%=p.getP_Qty()%></td>
                    <td style="padding:12px;text-align:center;border-bottom:1px solid #eee;"><a href="edit?pcode=<%=p.getP_code()%>" style="background:#16a34a;color:#fff;padding:8px 14px;border-radius:8px;text-decoration:none;">Edit</a></td>
                    <td style="padding:12px;text-align:center;border-bottom:1px solid #eee;"><a href="delete?pcode=<%=p.getP_code()%>" onclick="return confirm('Delete this product?')" style="background:#dc2626;color:#fff;padding:8px 14px;border-radius:8px;text-decoration:none;">Delete</a></td>
                </tr>
                <%
                    }
                %>
            </table>
            <%
                }
            %>
            <div style="text-align:center;margin-top:16px;"><a href="logout" style="display:inline-block;padding:10px 20px;background:#0f172a;color:#fff;border-radius:8px;text-decoration:none;">Log Out</a></div>
        </div>
    </main>
    <footer style="max-width:1100px;margin:20px auto;color:rgba(255,255,255,0.6);text-align:center;">© 2026 E-Store</footer>
</body>
</html>