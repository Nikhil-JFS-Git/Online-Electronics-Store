<%@page import="com.Bean.RegistrationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Order Status — E-Store</title>
</head>
<body style="margin:0;padding:0;min-height:100vh;background:linear-gradient(180deg,#071024,#0f172a);color:#fff;font-family:Inter,system-ui,Arial;">
    <header style="padding:18px 28px;display:flex;justify-content:flex-start;align-items:center;">
        <a href="index.html" style="display:flex;align-items:center;color:#fff;text-decoration:none;gap:10px;">
            <div style="width:44px;height:44px;border-radius:8px;background:linear-gradient(135deg,#2563eb,#06b6d4);display:flex;align-items:center;justify-content:center;font-weight:800;">ES</div>
            <div style="font-weight:700;">E-Store</div>
        </a>
    </header>
    <main style="max-width:880px;margin:28px auto;padding:18px;">
        <div style="background:#fff;padding:20px;border-radius:12px;color:#0f172a;">
            <%
                RegistrationBean r=(RegistrationBean)session.getAttribute("bean");
                Integer tbill=(Integer)request.getAttribute("bill");
                String msg=(String)request.getAttribute("msg");
                boolean success = "Order is Placed Successfully".equals(msg);
            %>
            <div style="font-size:22px;font-weight:800;text-align:center;margin:12px 0;color:<%= success ? "#16a34a" : "#dc2626" %>;">
                <%= success ? "✅ ORDER CONFIRMED" : "❌ ORDER FAILED" %>
            </div>
            <div style="display:flex;justify-content:space-between;padding:10px 12px;border-bottom:1px solid #eee;"><span>Customer</span><span><%=r!=null?r.getLastname():"-"%></span></div>
            <%
                if(success){
            %>
                <div style="display:flex;justify-content:space-between;padding:10px 12px;border-bottom:1px solid #eee;"><span>Order Total</span><span>₹ <%=tbill%></span></div>
                <div style="display:flex;justify-content:space-between;padding:10px 12px;border-bottom:1px solid #eee;"><span>Status</span><span style="color:green;font-weight:bold;">CONFIRMED ✓</span></div>
            <%
                } else {
            %>
                <div style="display:flex;justify-content:space-between;padding:10px 12px;border-bottom:1px solid #eee;"><span>Status</span><span style="color:red;font-weight:bold;">FAILED ✗</span></div>
            <%
                }
            %>
            <div style="padding:16px;text-align:center;">
                <%
                    if(success){ %>
                        <div style="color:green"><%=msg%></div>
                        <p>Thank you for shopping with us.</p>
                <% } else { %>
                        <div style="color:red"><%=msg%></div>
                        <p>Please reduce the quantity or choose another product.</p>
                <% } %>
            </div>
            <div style="display:flex;justify-content:center;gap:12px;padding:12px;">
                <a href="viewcustproducts" style="padding:10px 16px;border-radius:8px;color:#fff;text-decoration:none;font-weight:700;background:#2563eb;">Continue Shopping</a>
                <a href="logout" style="padding:10px 16px;border-radius:8px;color:#fff;text-decoration:none;font-weight:700;background:#dc2626;">Logout</a>
            </div>
        </div>
    </main>
    <footer style="max-width:880px;margin:20px auto;color:rgba(255,255,255,0.6);text-align:center;">© 2026 E-Store</footer>
</body>
</html>