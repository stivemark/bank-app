<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="transfer.css">
<script src="transfer.js"></script>
</head>
<body>
<div class="form-container">
        <p class="title">Transfer Amount</p>
        <form class="form" id="transferForm" action="tran" method="post">
            <input type="text" class="input" id="receivers accountNumber" placeholder="receivers phonenumber" required name="num">
            <input type="number" class="input" id="transferAmount" placeholder="Amount to Transfer" required name="amo">
            <input type="password" class="input" id="pin" placeholder="Enter your PIN" required name="pin">
            <p class="page-link">
                <span class="page-link-label" id="error-message"></span>
            </p>
<% 
  String s1 = (String) request.getAttribute("w");
  String amount=(String) session.getAttribute("amount");
%>
<% if (s1 != null) { %>
    <h4 style="color:red;margin-left:10%;margin-top:2vh;"><%=s1 %></h4>
<% } %>
<% if (s1 != null) { %>
    <h4 style="color:red;margin-left:10%;margin-top:2vh;"><%=s1 %></h4>
<% } %>
            <button class="form-btn" type="submit">Transfer Money</button>
        </form>
        <p class="sign-up-label">
            Want to go back? <a class="sign-up-link" href="home.jsp">Go to Home Page</a>
        </p>
    </div>
    <% 
   String s = (String) request.getAttribute("s");
%>
<% if (s != null) { %>
    <h2 style="color:green;margin-left:10%;margin-top:2vh;backdrop-filter: blur(10px);background-color: white;">Transaction Successful! Amount Transferred:₹<%=amount %>.00  </h2>
    
<% } %>

</body>
</html>