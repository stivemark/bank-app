<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="user_forget.css">
<script src="user_forget.js"></script>
</head>
<body>
<div class="form-container">
        <p class="title">Reset Password</p>
        <form class="form" id="resetForm" action="forg" method="post">
            <input type="email" class="input" id="email" placeholder="Enter your email" required name="email">
            <input type="password" class="input" id="newPassword" placeholder="New Password" required name="pwd">
            <input type="password" class="input" id="confirmPassword" placeholder="Confirm New Password" required>
            <p id="error" class="error-message"></p>
            <%String s=(String)request.getAttribute("b"); %>
            <%
            if(s!=null)
            {
            	out.print("<h4 style='color:red'>"+s+"</h4>");
            }
            %>
            <button type="submit" class="form-btn">Reset Password</button>
        </form>
        <p class="sign-in-label">
            Remembered your password? <a href="Login.jsp" class="sign-in-link">Log in</a>
        </p>
        <% String s1=(String)request.getAttribute("a");%>
        <%
        if(s1!=null)
        {
        	out.print("<h4 style='color:green;margin-left:10%;margin-top:20vh;'>"+s1+"</h4>");
        }
        %>
    </div>

</body>
</html>