<%@page import="java.util.ArrayList"%>
<%@page import="com.Bean.ProductBean"%>
<%@page import="com.Bean.RegistrationBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
RegistrationBean rb = (RegistrationBean)session.getAttribute("bean");
ArrayList<ProductBean> al = (ArrayList<ProductBean>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products</title>
</head>

<body style="margin:0;font-family:Arial,Helvetica,sans-serif;background:#0F172A;">

<!-- Navigation Bar -->

<div style="height:70px;
background:#111827;
display:flex;
justify-content:space-between;
align-items:center;
padding:0 60px;
box-shadow:0 2px 10px rgba(0,0,0,.3);">

    <div style="font-size:28px;
    font-weight:bold;
    color:#3B82F6;">
        E-Store
    </div>

    <div>

        <a href="index.html"
        style="color:white;
        text-decoration:none;
        margin-right:30px;
        font-size:17px;">
        Home
        </a>

        <a href="logout"
        style="background:#DC2626;
        color:white;
        padding:10px 18px;
        text-decoration:none;
        border-radius:6px;
        font-weight:bold;">
        Logout
        </a>

    </div>

</div>

<!-- Main Content -->

<div style="width:95%;
margin:40px auto;">

    <div style="background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 15px rgba(0,0,0,.3);">

        <h2 style="margin-top:0;color:#111827;">
            Welcome,
            <%= rb != null ? rb.getLastname() : "Customer" %>
        </h2>

        <hr style="margin:20px 0;">

        <h3 style="color:#2563EB;">
            Available Products
        </h3>

        <table style="width:100%;
        border-collapse:collapse;
        text-align:center;">

            <tr style="background:#2563EB;color:white;">

                <th style="padding:15px;">Product Code</th>

                <th>Product Name</th>

                <th>Company</th>

                <th>Price (₹)</th>

                <th>Stock</th>

                <th>Action</th>

            </tr>

            <%
            if(al!=null && !al.isEmpty())
            {
                for(ProductBean p:al)
                {
            %>

            <tr>

                <td style="padding:15px;border-bottom:1px solid #ddd;">
                    <%=p.getP_code()%>
                </td>

                <td style="border-bottom:1px solid #ddd;">
                    <%=p.getP_name()%>
                </td>

                <td style="border-bottom:1px solid #ddd;">
                    <%=p.getP_company()%>
                </td>

                <td style="border-bottom:1px solid #ddd;">
                    ₹ <%=p.getP_price()%>
                </td>

                <td style="border-bottom:1px solid #ddd;font-weight:bold;color:green;">
                    <%=p.getP_Qty()%>
                </td>

                <td style="border-bottom:1px solid #ddd;">

                    <a href="buy?pcode=<%=p.getP_code()%>"
                    style="background:#16A34A;
                    color:white;
                    text-decoration:none;
                    padding:8px 18px;
                    border-radius:5px;
                    font-weight:bold;">
                    Buy Now
                    </a>

                </td>

            </tr>

            <%
                }
            }
            else
            {
            %>

            <tr>

                <td colspan="6"
                style="padding:25px;
                color:red;
                font-weight:bold;">
                    No Products Available
                </td>

            </tr>

            <%
            }
            %>

        </table>

    </div>

</div>

</body>
</html>