<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="main_bank.TransactionServlet.Transaction"%>

<!DOCTYPE html>
<html>
<head>
    <title>Transaction History</title>
    
    
</head>
<body>
     <%
       double amount=(double)session.getAttribute("amount");
       
     
     %>
     <h1>amount:<%=amount %>></h1>
    
   
</body>
</html>
