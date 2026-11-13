<%@page import="com.Bean.Estore_Bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Admin Dashboard — E-Store</title>
</head>
<body style="margin:0;padding:0;min-height:100vh;background:linear-gradient(180deg,#071024,#0f172a);color:#fff;font-family:Inter,system-ui,Arial;">
  <header style="padding:18px 28px;display:flex;justify-content:space-between;align-items:center;">
    <a href="index.html" style="display:flex;align-items:center;color:#fff;text-decoration:none;gap:10px;">
      <div style="width:44px;height:44px;border-radius:8px;background:linear-gradient(135deg,#2563eb,#06b6d4);display:flex;align-items:center;justify-content:center;font-weight:800;">ES</div>
      <div style="font-weight:700;">E-Store Admin</div>
    </a>
    <nav>
      <a href="Addprod.html" style="color:rgba(255,255,255,0.9);text-decoration:none;margin-left:10px;">Add</a>
      <a href="view" style="color:rgba(255,255,255,0.9);text-decoration:none;margin-left:10px;">View</a>
      <a href="logout" style="color:rgba(255,255,255,0.9);text-decoration:none;margin-left:10px;">Logout</a>
    </nav>
  </header>
  <main style="max-width:880px;margin:28px auto;padding:18px;">
    <div style="background:linear-gradient(180deg,rgba(255,255,255,0.02),transparent);padding:28px;border-radius:14px;">
      <div style="background:#fff;padding:22px;border-radius:10px;color:#0f172a;">
        <%
          Estore_Bean eb=(Estore_Bean)session.getAttribute("adminbean");
          String data=(String)request.getAttribute("data");
        %>
        <h2>Welcome, <%= eb!=null?eb.getLastName():"Admin" %></h2>
        <p>Administrator Dashboard</p>
        <%
          if(data!=null){ %>
            <div style="background:#d4edda;color:#155724;padding:12px;border-left:6px solid #28a745;border-radius:8px;margin-bottom:12px;"><%=data%></div>
        <% } %>
        <div style="display:flex;gap:12px;margin-top:12px;">
          <a href="Addprod.html" style="flex:1;padding:18px;border-radius:10px;color:#fff;text-decoration:none;text-align:center;background:#16a34a;"><h3 style="margin:0;">➕</h3><div style="margin-top:8px;">Add Product</div></a>
          <a href="view" style="flex:1;padding:18px;border-radius:10px;color:#fff;text-decoration:none;text-align:center;background:#2563eb;"><h3 style="margin:0;">📦</h3><div style="margin-top:8px;">View Products</div></a>
          <a href="logout" style="flex:1;padding:18px;border-radius:10px;color:#fff;text-decoration:none;text-align:center;background:#dc2626;"><h3 style="margin:0;">🚪</h3><div style="margin-top:8px;">Logout</div></a>
        </div>
      </div>
    </div>
  </main>
  <footer>© 2026 Online Electronics Store | Admin Panel</footer>
</body>
</html>