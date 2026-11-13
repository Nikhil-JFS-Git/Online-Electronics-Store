<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Login Failed — E-Store</title>
</head>
<body style="margin:0;padding:0;min-height:100vh;background:linear-gradient(180deg,#7f1d1d,#991b1b);color:#fff;font-family:Inter,system-ui,Arial;display:flex;align-items:center;">
    <div style="max-width:880px;margin:28px auto;padding:18px;">
        <div style="background:#fff;padding:30px;border-radius:12px;color:#0f172a;max-width:520px;margin:0 auto;">
            <div style="font-size:48px;margin-bottom:12px;">❌</div>
            <div style="font-size:18px;margin-bottom:14px;color:#b91c1c;">
                <%
                    String data = (String)request.getAttribute("msg");
                    if(data != null){ out.print(data); } else { out.print("Invalid Username or Password"); }
                %>
            </div>
            <a href="Customerlogin.html" style="display:inline-block;padding:10px 18px;background:#2563eb;color:#fff;border-radius:8px;text-decoration:none;font-weight:700;">Try Again</a>
        </div>
    </div>
    <footer style="max-width:880px;margin:20px auto;color:rgba(255,255,255,0.6);text-align:center;">© 2026 E-Store</footer>
</body>
</html>