<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>

<body style="margin:0;font-family:Arial,Helvetica,sans-serif;background:#0F172A;">

<!-- Navigation Bar -->

<div style="height:70px;background:#111827;display:flex;justify-content:space-between;align-items:center;padding:0 60px;">

    <div style="color:#3B82F6;font-size:28px;font-weight:bold;">
        E-Store
    </div>

    <div>
        <a href="index.html" style="color:white;text-decoration:none;margin-left:30px;">Home</a>
        <a href="Customerlogin.html" style="color:white;text-decoration:none;margin-left:30px;">Customer Login</a>
        <a href="adminlogin.html" style="color:white;text-decoration:none;margin-left:30px;">Admin Login</a>
    </div>

</div>

<!-- Logout Card -->

<div style="display:flex;justify-content:center;align-items:center;height:calc(100vh - 70px);">

    <div style="background:white;width:420px;padding:40px;border-radius:12px;text-align:center;box-shadow:0 0 20px rgba(0,0,0,.4);">

        <h2 style="color:#111827;margin-bottom:15px;">
            Logged Out Successfully
        </h2>

        <p style="color:#6B7280;margin-bottom:30px;">
            You have successfully logged out.
        </p>

        <a href="index.html"
        style="display:inline-block;
        padding:12px 30px;
        background:#2563EB;
        color:white;
        text-decoration:none;
        border-radius:8px;
        font-weight:bold;">

            Go to Home

        </a>

    </div>

</div>

</body>
</html>