<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto_Bank.User_dto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<style>
    * {
        margin: 0;
        padding: 0;
    }
    body {
        width: 100%;
        height: 100vh;
        background: url('money-2696228.jpg') no-repeat center center fixed;
        background-size: cover;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .container {
        width: 50%;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white */
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        backdrop-filter: blur(10px); /* Blur effect */
        text-align: left;
    }
    h1 {
        color: rgb(201, 104, 104);
        text-align: center;
        margin-bottom: 20px;
    }
    .details-table {
        width: 100%;
        border-collapse: separate;
        border-spacing: 0 10px; /* Space between rows */
    }
    .details-table th {
        color: blue;
        font-weight: bold;
        width: 30%;
        padding-right: 10px;
        text-align: left;
    }
    .details-table td {
        color: red;
        text-align: left;
    }
    .center-text {
        text-align: center;
        margin-top: 20px;
    }
    .center-text a {
        color: #201584;
        text-decoration: none;
        font-weight: bold;
    }
</style>
</head>
<body>
<%
    User_dto udto = (User_dto) request.getAttribute("udto1");
%>
<div class="container">
    <h1>Your Details</h1>
    <table class="details-table">
        <tr>
            <th>First Name:</th>
            <td><%= udto.getFirstname() %></td>
        </tr>
        <tr>
            <th>Last Name:</th>
            <td><%= udto.getLastname() %></td>
        </tr>
        <tr>
            <th>Phone:</th>
            <td><%= udto.getPhno() %></td>
        </tr>
        <tr>
            <th>Age:</th>
            <td><%= udto.getAge() %></td>
        </tr>
        <tr>
            <th>Gender:</th>
            <td><%= udto.getGender() %></td>
        </tr>
        <tr>
            <th>Address:</th>
            <td><%= udto.getAddress() %></td>
        </tr>
        <tr>
            <th>Email:</th>
            <td><%= udto.getEmail() %></td>
        </tr>
    </table>
    
    <div class="center-text">
        <p>Want to go back? <a href="home.jsp">Home Page</a></p>
    </div>
</div>
</body>
</html>
