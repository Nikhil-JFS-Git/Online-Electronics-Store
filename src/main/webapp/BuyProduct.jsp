<%@page import="com.Bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>
</head>

<body style="margin:0;
background:linear-gradient(135deg,#071024,#0f172a);
font-family:Arial,Helvetica,sans-serif;">

<%
ProductBean pb=(ProductBean)session.getAttribute("pb");
%>

<div style="width:900px;
margin:40px auto;
background:white;
border-radius:15px;
box-shadow:0 10px 25px rgba(0,0,0,.4);
overflow:hidden;">

<!-- Header -->

<div style="background:#2563eb;
padding:20px;
color:white;
display:flex;
justify-content:space-between;
align-items:center;">

<h2 style="margin:0;">🛒 Purchase Product</h2>

<a href="viewcustproducts"
style="color:white;
text-decoration:none;
font-weight:bold;">
← Back
</a>

</div>

<!-- Product Details -->

<div style="padding:30px;">

<table style="width:100%;
border-collapse:collapse;
font-size:18px;">

<tr>
<td style="padding:15px;font-weight:bold;">Product Code</td>
<td><%=pb.getP_code()%></td>
</tr>

<tr style="background:#f8fafc;">
<td style="padding:15px;font-weight:bold;">Product Name</td>
<td><%=pb.getP_name()%></td>
</tr>

<tr>
<td style="padding:15px;font-weight:bold;">Company</td>
<td><%=pb.getP_company()%></td>
</tr>

<tr style="background:#f8fafc;">
<td style="padding:15px;font-weight:bold;">Price</td>
<td style="color:#2563eb;
font-size:22px;
font-weight:bold;">
₹ <%=pb.getP_price()%>
</td>
</tr>

<tr>
<td style="padding:15px;font-weight:bold;">Available Stock</td>
<td style="color:green;
font-size:20px;
font-weight:bold;">
<%=pb.getP_Qty()%> Units
</td>
</tr>

</table>

<hr style="margin:30px 0;">

<form action="updatecustproduct" method="post">

<input type="hidden"
name="pcode"
value="<%=pb.getP_code()%>">

<input type="hidden"
name="price"
value="<%=pb.getP_price()%>">

<label style="font-size:18px;
font-weight:bold;">
Required Quantity
</label>

<br><br>

<input type="number"
name="rqty"
min="1"
required
placeholder="Enter Quantity"
style="width:100%;
padding:12px;
font-size:16px;
border:1px solid #ccc;
border-radius:8px;
box-sizing:border-box;">

<br><br>

<input type="submit"
value="🛍 Buy Product"
style="width:100%;
padding:14px;
background:#2563eb;
color:white;
font-size:18px;
font-weight:bold;
border:none;
border-radius:8px;
cursor:pointer;">

<input type="reset"
value="Clear"
style="width:100%;
padding:14px;
margin-top:10px;
background:#6b7280;
color:white;
font-size:18px;
font-weight:bold;
border:none;
border-radius:8px;
cursor:pointer;">

</form>

<br>

<div style="text-align:center;">

<a href="viewcustproducts"
style="text-decoration:none;
font-weight:bold;
color:#2563eb;
font-size:17px;">
⬅ Continue Shopping
</a>

</div>

</div>

</div>

<div style="text-align:center;
color:white;
margin-top:20px;
padding-bottom:20px;">

© 2026 E-Store. All Rights Reserved.

</div>

</body>
</html>