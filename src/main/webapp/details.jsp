<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Details</title>
<style>
* {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
}
body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url(banklogin.jpg) no-repeat;
    background-size: cover;
    background-position: center;
}
.wrapper {
    width: 420px;
    color: #fff;
    border-radius: 12px;
    padding: 30px 40px;
    border: 2px solid rgba(255, 255, 255, 0.2);
    backdrop-filter: blur(10px);
    background: rgba(0, 0, 0, 0.6);
}
.wrapper h1 {
    font-size: 36px;
    text-align: center;
    color: rgb(203, 220, 235);
    font-family: Georgia, 'Times New Roman', Times, serif;
    margin-bottom: 20px;
}
.input-box {
    position: relative;
    width: 100%;
    height: 50px;
    margin: 30px 0;
}
.input-box input {
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    border: 2px solid rgba(255, 255, 255, 0.2);
    border-radius: 40px;
    font-size: 16px;
    color: #fff;
    padding: 15px 20px;
}
.input-box input::placeholder {
    color: #fff;
}
.input-box i {
    position: absolute;
    right: 20px;
    top: 30%;
    transform: translate(-50%);
    font-size: 20px;
}
.rember-forgot {
    display: flex;
    justify-content: space-between;
    font-size: 14.5px;
    margin: -15px 0 15px;
}
.rember-forgot label input {
    accent-color: #fff;
    margin-right: 3px;
}
.rember-forgot a {
    color: #fff;
    text-decoration: none;
}
.rember-forgot a:hover {
    text-decoration: underline;
}
.wrapper .btn {
    width: 100%;
    height: 50px;
    background: #fff;
    border: none;
    outline: none;
    border-radius: 40px;
    box-shadow: 0 0 10px rgba(0, 0, 0, .1);
    cursor: pointer;
    font-size: 18px;
    color: #333;
    font-weight: 600;
    transition: background 0.3s ease;
}
.wrapper .btn:hover {
    background: #ddd;
}
.registerlink {
    font-size: 14.5px;
    text-align: center;
    margin: 20px 0 15px;
}
.registerlink p a {
    color: #fff;
    text-decoration: none;
    font-weight: 600;
}
.registerlink p a:hover {
    text-decoration: underline;
}
.error-message {
    color: red;
    text-align: center;
    margin-top: 15px;
    font-size: 14px;
}
</style>
</head>
<body>
    <div class="wrapper">
        <form action="details" method="post">
            <h1>My Account Details</h1>
            <div class="input-box">
                <input type="password" name="pin" placeholder="Enter your PIN" required>
                <i class='bx bxs-lock-open-alt'></i>
            </div>
            <div class="rember-forgot">
                <label><input type="checkbox" name="rememberMe"> Remember Me</label>
                <a href="forgotPin.jsp">Update Pin?</a>
            </div>
            <button type="submit" class="btn">Login</button>
            <div class="registerlink">
                <p>Don't have an account? <a href="bank_account.jsp">Create Account</a></p>
            </div>
            <% String s = (String) request.getAttribute("s"); %>
            <% if (s != null) { %>
                <div class="error-message"><%= s %></div>
            <% } %>
        </form>
    </div>
</body>
</html>
