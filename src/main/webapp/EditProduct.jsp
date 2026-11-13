<%@page import="java.util.ArrayList"%>
<%@page import="com.Bean.ProductBean"%>
<%@page import="com.Bean.Estore_Bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Edit Product — E-Store</title>
</head>
<body style="margin:0;padding:0;min-height:100vh;background:linear-gradient(180deg,#071024,#0f172a);color:#fff;font-family:Inter,system-ui,Arial;">
    <header style="padding:18px 28px;display:flex;justify-content:flex-start;align-items:center;">
        <a href="adminHome.jsp" style="display:flex;align-items:center;color:#fff;text-decoration:none;gap:10px;">
            <div style="width:44px;height:44px;border-radius:8px;background:linear-gradient(135deg,#2563eb,#06b6d4);display:flex;align-items:center;justify-content:center;font-weight:800;">ES</div>
            <div style="font-weight:700;">E-Store Admin</div>
        </a>
    </header>
    <main style="max-width:880px;margin:28px auto;padding:18px;">
        <div style="background:linear-gradient(180deg,rgba(255,255,255,0.02),transparent);padding:28px;border-radius:14px;">
            <div style="background:#fff;padding:22px;border-radius:10px;color:#0f172a;">
                <% 
                    Estore_Bean ab = (Estore_Bean)session.getAttribute("adminbean");
                    ProductBean pb = (ProductBean)session.getAttribute("pbean");
                %>
                <h2>Edit Product</h2>
                <div style="margin:8px 0 14px;">Hello <b><%=ab!=null?ab.getUsername():"Admin"%></b>, update the product details.</div>
                <form action="update" method="post">
                    <label style="display:block;margin:10px 0 6px;font-weight:700;">Product Price</label>
                    <input type="text" name="pprice" value="<%=pb.getP_price()%>" required style="width:100%;padding:10px;border:1px solid #d1d5db;border-radius:8px;">
                    <label style="display:block;margin:10px 0 6px;font-weight:700;">Product Quantity</label>
                    <input type="text" name="pqty" value="<%=pb.getP_Qty()%>" required style="width:100%;padding:10px;border:1px solid #d1d5db;border-radius:8px;">
                    <input type="hidden" name="pcode" value="<%=pb.getP_code()%>">
                    <input type="submit" value="Update Product" style="margin-top:14px;width:100%;padding:12px;background:#2563eb;color:#fff;border:none;border-radius:8px;font-weight:800;">
                </form>
                <a href="view" style="display:inline-block;margin-top:12px;color:#2563eb;text-decoration:none;">← Back to Product List</a>
            </div>
        </div>
    </main>
    <footer style="max-width:880px;margin:20px auto;color:rgba(255,255,255,0.6);text-align:center;">© 2026 E-Store</footer>
</body>
</html>