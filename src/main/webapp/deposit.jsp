<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body {

    background-image: url("https://cdn.pixabay.com/photo/2021/11/05/12/00/dollars-6771200_1280.jpg");
    background-repeat: no-repeat;      /* Prevents the image from repeating */
    background-size: cover;            /* Ensures the image covers the whole area */
    background-position: center;   
    font-family: Arial, sans-serif;
    background-color: #D2B48C;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}
 

/*body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    /*background: url(banklogin.jpg) no-repeat;*/
     background-image: url("https://media.istockphoto.com/id/2156282384/photo/money.jpg?s=612x612&w=0&k=20&c=aKKIqohnn2ouFX20we5ZM7f3nLjDIIznuP3mMs_ZDSc=")  no repeat;
    background-size: 10ver;
    background-position:center;
   

 
}*/
.logo {
      margin-bottom: 1rem;
      font-size: 2.5rem;
      text-align: center;
      color: #1877f2;
      font-weight: 700;
    }
.form-box {
  max-width: 400px;
  background:white;
  overflow: hidden;
  border-radius: 16px;
  color: #010101;
  margin-top:10%;
}

.form {
  position: relative;
  display: flex;
  flex-direction: column;
  padding: 32px 24px 24px;
  gap: 16px;
  text-align: center;
}

/Form text/
.title {
  font-size: 2.5rem;
  text-align: center;
  color: #1877f2;
  font-weight: 700;
  
}

.subtitle {
  font-size: 1rem;
  color: #666;
}

/Inputs box/
.form-container {
  overflow: hidden;
  border-radius: 8px;
  background-color: #fff;
  margin: 1rem 0 .5rem;
  width: 100%;
}

.input {
  background: none;
  border: 2px solid black; /* Updated to have a thicker border */
  outline: 0;
  height: 35px;
  width: 80%;
  border-bottom: 2px solid black; /* Thickened bottom border */
  font-size: .9rem;
  padding: 8px 15px;
}


.form-section {
  padding: 16px;
  font-size: .85rem;
  background-color: #e0ecfb;
  box-shadow: rgb(0 0 0 / 8%) 0 -1px;
}

.form-section a {
  font-weight: bold;
  color: #0066ff;
  transition: color .3s ease;
}

.form-section a:hover {
  color: #005ce6;
  text-decoration: underline;
}

/Button/
.form button {
  background-color: #0066ff;
  color: #fff;
  border: 0;
  border-radius: 24px;
  padding: 10px 16px;
  font-size: 1rem;
  font-weight: 600;
  cursor: pointer;
  transition: background-color .3s ease;
}

.form button:hover {
  background-color: #005ce6;
}
.b1{
width:200px;
height:40px;
}
</style>
</head>

<body bgcolor="#D2B48C">
<center>
<div class="form-box">
<form class="form" action="dep" method="post">
    <p class="logo">Save It</p>
    <span class="subtitle">save money in  essay way....</span>
    <div class="form-container">
		<input type="number" name="amount" class="input" required placeholder="Amount"><br><br>
		<input type="number" name="pin" class="input" required placeholder="pin">
    </div>
 <center>
  <% 
   String s1 = (String) request.getAttribute("w");
  String amount=(String)session.getAttribute("amount");
  
%>
<% if (s1 != null) { %>
    <h4 style="color:red;margin-left:10%;margin-top:2vh;"><%=s1 %></h4>
<% } %>
    <button class="b1">Deposit</button>
 </center>
</form>
<div class="form-section">
  <p>do you want to exit? <a href="home.jsp">exit</a> </p>
</div>
</div>
<% 
   String s = (String) request.getAttribute("s");
%>
<% if (s != null) { %>
   <h2 style="color:green;margin-left:10%;margin-top:2vh;backdrop-filter: blur(10px);background-color: white;">Transaction Successful! Deposited Amount:₹<%=amount %>.00  </h2>
<% } %>


</center>



</body>
</html>