<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="show_balance.css">
<style type="text/css">
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
/*body {
    margin: 0;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f0f2f5;
}*/

.form-container {
    width: 350px;
    height: auto; /* Auto height to fit content */
    background-color: #fff;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    border-radius: 10px;
    box-sizing: border-box;
    padding: 20px 30px;
}

.title {
    text-align: center;
    font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
    margin: 10px 0 30px 0;
    font-size: 28px;
    font-weight: 800;
}

.form {
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 18px;
    margin-bottom: 15px;
}

.input {
    border-radius: 20px;
    border: 1px solid #c0c0c0;
    outline: 0 !important;
    box-sizing: border-box;
    padding: 12px 15px;
}

.page-link {
    text-decoration: underline;
    margin: 0;
    text-align: end;
    color: #747474;
}

.page-link-label {
    cursor: pointer;
    font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
    font-size: 12px;
    font-weight: 700;
    color: red; /* Error message color */
}

.form-btn {
    padding: 10px 15px;
    font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
    border-radius: 20px;
    border: 0 !important;
    outline: 0 !important;
    background: teal;
    color: white;
    cursor: pointer;
    box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}

.form-btn:active {
    box-shadow: none;
}

.sign-up-label {
    margin: 0;
    font-size: 10px;
    color: #747474;
    font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
}

.sign-up-link {
    margin-left: 1px;
    font-size: 11px;
    text-decoration: underline;
    text-decoration-color: teal;
    color: teal;
    cursor: pointer;
    font-weight: 800;
    font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
}



</style>
</head>
<body>
<div class="form-container">
        <p class="title">Show Balance</p>
        <form class="form" id="balanceForm" action="sho" method="post">
            <input type="password" class="input" id="pin" placeholder="Enter PIN" required name="pin">
            <p class="page-link">
                <span class="page-link-label" id="error-message"></span>
            </p>
            <button class="form-btn" type="submit">Check Balance</button>
        </form>
        <p class="sign-up-label">
            Want to go back? <a class="sign-up-link" href="home.jsp">Go to Home Page</a>
        </p>
    </div>
    <% 
   Double balance = (Double) request.getAttribute("bal"); 
%>
<% if (balance != null) { %>
    <h4 style="color:green;margin-left:10%;margin-top:2vh;backdrop-filter: blur(10px);background-color: white;">Your Balance: <%= balance %></h4>
<% }


%>

</body>
</html>