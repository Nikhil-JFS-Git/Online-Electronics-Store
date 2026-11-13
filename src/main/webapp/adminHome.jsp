<%@page import="javax.websocket.Session"%>
<%@page import="com.Bean.Estore_Bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Admin Dashboard — E-Store</title>
</head>
<body style="margin:0;padding:0;min-height:100vh;background:linear-gradient(180deg,#071024,#0f172a);color:#fff;font-family:Inter,system-ui,Arial">
    <header style="padding:18px 28px;display:flex;justify-content:space-between;align-items:center;">
        <a href="index.html" style="display:flex;align-items:center;color:#fff;text-decoration:none;gap:10px;font-weight:700;">
            <div style="width:44px;height:44px;border-radius:8px;background:linear-gradient(135deg,#2563eb,#06b6d4);display:flex;align-items:center;justify-content:center;font-weight:800;">ES</div>
            <div>E-Store Admin</div>
        </a>
        <nav>
            <a href="ViewProd.jsp" style="color:rgba(255,255,255,0.9);text-decoration:none;margin-left:14px;">Products</a>
        </nav>
    </header>
    <main style="max-width:880px;margin:28px auto;padding:18px;">
        <div style="background:linear-gradient(180deg,rgba(255,255,255,0.02),transparent);padding:28px;border-radius:14px;">
            <div style="background:#fff;padding:22px;border-radius:10px;color:#0f172a;">
                <h2 style="margin:0 0 18px 0;font-size:28px;">Admin Dashboard</h2>
                <div style="margin:10px 0;font-size:16px;">
                    <%
                        Estore_Bean eb = (Estore_Bean)session.getAttribute("adminbean");
                        if(eb != null){
                    %>
                    Welcome, <b><%= eb.getLastName() %></b>
                    <%
                        }
                    %>
                </div>
                <a href="Addprod.html" style="display:block;padding:12px;border-radius:8px;text-decoration:none;color:#fff;font-weight:700;margin-top:10px;background:#16a34a;">➕ Add Product</a>
                <a href="view" style="display:block;padding:12px;border-radius:8px;text-decoration:none;color:#fff;font-weight:700;margin-top:10px;background:#2563eb;">📦 View Products</a>
                <a href="logout" style="display:block;padding:12px;border-radius:8px;text-decoration:none;color:#fff;font-weight:700;margin-top:10px;background:#dc2626;">🚪 Log Out</a>
            </div>
        </div>
    </main>
    <footer style="max-width:880px;margin:20px auto;text-align:center;color:rgba(255,255,255,0.6);">Online Electronics Store - Admin Panel</footer>
</body>
</html>