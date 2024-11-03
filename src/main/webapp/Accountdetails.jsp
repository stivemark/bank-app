<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto_Bank.Bank_dto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<style>
     styling code 
</style>
</head>
<body>

<%
    Bank_dto bto1 = (Bank_dto) request.getAttribute("bto1");
    if (bto1 == null) {
    	String s=(String)request.getAttribute("hi");
    	System.out.println(s);
%>
    <div class="container">
        <h1>User Not Found</h1>
        <p>We couldn’t retrieve your details. Please ensure you are logged in or try again later.</p>
        <div class="center-text">
            <a href="details.jsp">Return to Home Page</a>
        </div>
    </div>
<%
    } else {
%>


<div class="container">
    <h1>Your Details</h1>
    <table class="details-table">
        <tr>
            <th>Account Type:</th>
            <td><%= bto1.getTypeOfAccount() %></td>
        </tr>
        <tr>
            <th>Your Pin:</th>
            <td><%= bto1.getPin() %></td>
        </tr>
        <tr>
            <th>Linked Phone Number:</th>
            <td><%= bto1.getPhno() %></td>
        </tr>
        <tr>
            <th>Age:</th>
            <td><%= bto1.getAge() %></td>
        </tr>
        <tr>
            <th>Gender:</th>
            <td><%= bto1.getGender() %></td>
        </tr>
        <tr>
            <th>Address:</th>
            <td><%= bto1.getAddress() %></td>
        </tr>
        <tr>
            <th>Email:</th>
            <td><%= bto1.getEmail() %></td>
        </tr>
    </table>
    <div class="center-text">
        <p>Want to go back? <a href="home.jsp">Home Page</a></p>
    </div>
</div>
<%
    }
%>
</body>
</html>
