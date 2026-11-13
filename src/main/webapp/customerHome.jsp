<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.Bean.RegistrationBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Customer Dashboard — E-Store</title>
</head>
<body style="margin:0;padding:0;min-height:100vh;background:linear-gradient(180deg,#071024,#0f172a);color:#fff;font-family:Inter,system-ui,Arial;">
    <header style="padding:18px 28px;display:flex;justify-content:space-between;align-items:center;">
        <a href="index.html" style="display:flex;align-items:center;color:#fff;text-decoration:none;gap:10px; font-weight:700;">
            <div style="width:44px;height:44px;border-radius:8px;background:linear-gradient(135deg,#2563eb,#06b6d4);display:flex;align-items:center;justify-content:center;font-weight:800;">ES</div>
            <div>E-Store</div>
        </a>
        <a href="logout" style="background:#dc2626;color:#fff;padding:8px 16px;border-radius:8px;text-decoration:none;">Logout</a>
    </header>
    <main style="max-width:880px;margin:28px auto;padding:18px;">
        <div style="background:linear-gradient(180deg,rgba(255,255,255,0.02),transparent);padding:28px;border-radius:14px;">
            <div style="background:rgba(255,255,255,0.06);backdrop-filter:blur(8px);padding:30px;border-radius:14px;text-align:center;">
                <div style="font-size:56px;margin-bottom:16px;">🛒</div>
                <%
                    RegistrationBean rb=(RegistrationBean)session.getAttribute("bean");
                %>
                <h2 style="margin:0 0 12px 0;">Welcome, <%= rb!=null?rb.getLastname():"Customer" %></h2>
                <p style="margin:0;color:rgba(255,255,255,0.8);">Start shopping for the latest electronic products.</p>
                <a href="viewcustproducts" style="display:inline-block;text-decoration:none;background:#fff;color:#2563eb;padding:12px 28px;border-radius:10px;font-weight:700;margin-top:22px;">View Products</a>
            </div>
        </div>
    </main>
    <footer style="max-width:880px;margin:20px auto;text-align:center;color:rgba(255,255,255,0.6);">Online Electronics Store © 2026</footer>
</body>
</html>