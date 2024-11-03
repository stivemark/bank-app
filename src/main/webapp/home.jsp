<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Services</title>
<title>Insert title here</title>
<link rel="stylesheet" href="home.css">
</head>
<body>
    
    <div class="navbar">
        <div class="menu-icon" onclick="toggleMenu()">&#9776;</div>
         <div class="logo">
            <img src="https://tse3.mm.bing.net/th?id=OIP.pe9lVcACN2WPwYR9mnotvQHaHa&pid=Api&P=0&h=180" alt="Logo">
        </div>
        <div class="actions">
            <a href="bank_account.jsp" class="action-button">Create Account</a>
            <a href="withdraw.jsp" class="action-button">Withdraw</a>
            <a href="deposit.jsp" class="action-button">Deposit</a>
            <a href="transfer.jsp" class="action-button">Transfer</a>
            <a href="show_balance.jsp" class="action-button">Show Balance</a>
            <a href="details.jsp" class="action-button">AccountDetails</a>
   
             <!-- New Withdraw Button -->
        </div>
    </div>
    <h1 style="color:  rgb(0, 0, 0); backdrop-filter: blur(10px);background: transparent;font-family: 'Gill Sans', 'Gill Sans MT';">"Your dreams, our commitment <u style="background-color: white;color: rgb(255, 178, 111);font-style: italic">Evergreen Capital</u> on us for a secure, rewarding future."</h1>
    
     

   
      <div id="hero-section">
        <h1>Welcome to Evergreen Capital Bank</h1>
        <p>Efficient, secure, and customer-focused banking services designed for you.</p>
        <a href="about.jsp" class="hero-button">Learn More</a>
    </div> 
    <br><br><br>
     <div id="hero-section1">
        <h1>"Friends forever, and my Evergreen Capital’ bank forever—please use it for a good cause."</h1>
        <a href="Register.jsp" class="hero-button">Add Friends and win gifts!</a>
    </div>  
    
    <div class="side-menu" id="sideMenu">
        <a href="profile" class="menu-item profile">Profile</a>
        <a href="update.jsp" class="menu-item update">Update</a>
        <a href="del" class="menu-item delete">Delete</a>
        <a href="logo" class="menu-item logout">Log Out</a>
    </div>
    
    


<script src="home.js"></script>

</body>
</html>