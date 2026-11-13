<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
</head>

<body style="margin:0;
font-family:Arial,Helvetica,sans-serif;
background:linear-gradient(135deg,#071024,#0f172a);
min-height:100vh;">

<!-- Header -->

<div style="background:#2563eb;
padding:18px 40px;
display:flex;
justify-content:space-between;
align-items:center;">

<h2 style="color:white;margin:0;">
🛒 E-Store Admin Panel
</h2>

<a href="index.html"
style="color:white;
text-decoration:none;
font-size:18px;
font-weight:bold;">
🏠 Home
</a>

</div>

<!-- Dashboard -->

<div style="width:900px;
margin:50px auto;
background:white;
border-radius:15px;
box-shadow:0 10px 25px rgba(0,0,0,.4);
padding:40px;
text-align:center;">

<h1 style="color:#2563eb;margin-top:0;">
Welcome Admin
</h1>

<p style="font-size:18px;color:#555;">
Manage your Electronic Store products from one place.
</p>

<%
String data=(String)request.getAttribute("data");
if(data!=null){
%>

<div style="background:#d4edda;
color:#155724;
padding:15px;
border-left:5px solid green;
border-radius:8px;
margin:25px auto;
width:70%;
font-size:18px;
font-weight:bold;">

<%=data%>

</div>

<%
}
%>

<div style="display:flex;
justify-content:center;
gap:30px;
margin-top:40px;
flex-wrap:wrap;">

<a href="Addprod.html"
style="text-decoration:none;
background:#16a34a;
color:white;
padding:20px 40px;
border-radius:10px;
font-size:20px;
font-weight:bold;
width:220px;">
➕<br><br>
Add Product
</a>

<a href="view"
style="text-decoration:none;
background:#2563eb;
color:white;
padding:20px 40px;
border-radius:10px;
font-size:20px;
font-weight:bold;
width:220px;">
📦<br><br>
View Products
</a>

<a href="logout"
style="text-decoration:none;
background:#dc2626;
color:white;
padding:20px 40px;
border-radius:10px;
font-size:20px;
font-weight:bold;
width:220px;">
🚪<br><br>
Logout
</a>

</div>

</div>

<!-- Footer -->

<div style="text-align:center;
color:white;
padding:20px;
font-size:17px;">

© 2026 E-Store | Admin Dashboard

</div>

</body>
</html>