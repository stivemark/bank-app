<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
<style>
    /* Reset and general styling */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: url(business-3528035_1920.jpg) no-repeat;
   
    
        background-size: 10ver;
        background-position:center;
    }
    .form-container {
        width: 100%;
        max-width: 450px;
        padding: 30px;
        border-radius: 12px;
        backdrop-filter: blur(10px);
        background: transparent;
        background: #fffff;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        color: #33;
    }
    h2 {
        font-size: 26px;
        text-align: center;
        color: #3498db;
        margin-bottom: 15px;
    }
    p {
        font-size: 14px;
        text-align: center;
        color: #666;
        margin-bottom: 20px;
    }
    .input-box {
        margin-bottom: 20px;
    }
    .input-box label {
        font-size: 14px;
        color: #333;
        display: block;
        margin-bottom: 5px;
    }
    .input-box input, .input-box select {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background: #f9f9f9;
        color: #333;
        font-size: 16px;
        outline: none;
        transition: border-color 0.3s;
    }
    .input-box input::placeholder {
        color: #bbb;
    }
    .input-box input:focus, .input-box select:focus {
        border-color: #3498db;
    }
    .btn {
        width: 100%;
        padding: 12px;
        background-color: #3498db;
        color: #ffffff;
        font-size: 16px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s;
        font-weight: bold;
    }
    .btn:hover {
        background-color: #2980b9;
    }
    .sign-up-label {
        font-size: 14px;
        text-align: center;
        color: #666;
        margin-top: 15px;
    }
    .sign-up-link {
        color: #3498db;
        text-decoration: none;
        font-weight: bold;
    }
    .sign-up-link:hover {
        text-decoration: underline;
    }
    .message {
        text-align: center;
        font-size: 16px;
        margin-top: 10px;
        font-weight: bold;
    }
    .message.error { color: #e74c3c; }
    .message.success { color: #2ecc71; }
    .message.info { color: #3498db; }
</style>
</head>
<body>
    <div class="form-container">
        <h2>Create Your FB Account </h2>
        <p>Please select the type of account you want to create:</p>
        <form action="createn" method="post" onsubmit="return validateForm()">
            <div class="input-box">
                <label for="pin">Set PIN:</label>
                <input type="password" id="pin" name="pin" placeholder="Enter PIN" required>
            </div>
            <div class="input-box">
                <label for="confirmPin">Confirm PIN:</label>
                <input type="password" id="confirmPin" name="confirmPin" placeholder="Confirm PIN" required>
            </div>
            <div class="input-box">
                <label for="accountType">Account Type:</label>
                <select id="accountType" name="accountType" required>
                    <option value="savings">Savings</option>
                    <option value="checking">Checking</option>
                    <option value="business">Business</option>
                    <option value="savings">Fixed</option>
                     <option value="savings">Joint</option>
                     <option value="savings">Savings</option>
                    <option value="checking">Student Account</option>
                </select>
            </div>
            <div class="input-box">
                <label for="initialBalance">Initial Balance:</label>
                <input type="number" id="initialBalance" name="bal" min="0" placeholder="Initial Balance" required>
            </div>
            <button type="submit" class="btn">Submit</button>
            <p class="sign-up-label">
                Already have an account? <a class="sign-up-link" href="home.jsp">Go to Home Page</a>
            </p>
        </form>
        <% String s1 = (String) request.getAttribute("s1"); %>
        <% if (s1 != null) { %>
            <p class="message error"><%= s1 %></p>
        <% } %>
        <% String s = (String) request.getAttribute("s"); %>
        <% if (s != null) { %>
            <p class="message success"><%= s %></p>
        <% } %>
        <% Long l = (Long) request.getAttribute("ac"); %>
        <% if (l != null) { %>
            <p class="message info">Your account number: <%= l %></p>
        <% } %>
    </div>
</body>
</html>
