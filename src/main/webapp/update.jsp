<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <link rel="stylesheet" href="update.css">
</head>
<body>
<div class="form-container">
    <%
        String firstname = (String) session.getAttribute("firstname");
        String secondname = (String) session.getAttribute("lastname");
        String phon = (String) session.getAttribute("phonenumber");
        String age = (String) session.getAttribute("age");
        String gender = (String) session.getAttribute("gender");
        String address = (String) session.getAttribute("address");
    %>
    <h2 class="title">Update Profile</h2>
    <form class="form" action="upd" method="post">
        <input type="text" class="input" placeholder="First Name" required name="firstname" value="<%= firstname != null ? firstname : "" %>">
        <input type="text" class="input" placeholder="Last Name" required name="lastname" value="<%= secondname != null ? secondname : "" %>">
        <input type="tel" class="input" placeholder="Phone Number" required name="phone" value="<%= phon != null ? phon : "" %>">
        <input type="number" class="input" placeholder="Age" required name="age" value="<%= age != null ? age : "" %>">
        
        <select class="input" required name="gender">
            <option value="" disabled <%= gender == null ? "selected" : "" %>>Select Gender</option>
            <option value="Male" <%= "Male".equals(gender) ? "selected" : "" %>>Male</option>
            <option value="Female" <%= "Female".equals(gender) ? "selected" : "" %>>Female</option>
            <option value="Other" <%= "Other".equals(gender) ? "selected" : "" %>>Other</option>
        </select>

        <input type="text" class="input" placeholder="Address" required name="address" value="<%= address != null ? address : "" %>">
        
        <% String s = (String) request.getAttribute("s1"); %>
        <% if(s != null) { %>
            <h4 style='color:red'><%= s %></h4>
        <% } %>
        
         <button type="submit" class="form-btn">Update Profile</button>
       
    </form>

    <p class="redirect-label">Go to <a href="home.jsp" class="redirect-link">Home Page</a></p>

    <% String s1 = (String) request.getAttribute("s"); %>
    <% if(s1 != null) { %>
        <h4 style='color:green;margin-left:10%;margin-top:10vh;'><%= s1 %></h4>
    <% } %>
</div>
</body>
</html>
