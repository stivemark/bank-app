<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="form.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<style>
*{
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
    font-family:"poppins",sans-serif;
   
}
body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url(banklogin.jpg) no-repeat;
   
    
    background-size: 10ver;
    background-position:center;
   

 
}

.wrapper{
    width: 420px;
    color: #fff;
    border-radius: 12px;
    /* background-color: green; */
    padding: 30px 40px;
    border: 2px solid rgba(255,255, 255, .2);
    backdrop-filter: blur(10px);
    background: transparent;
    
}
.wrapper h1{
    font-size: 36px;
    text-align: center;
}
.wrapper .input-box{
    position: relative;
    width: 100%;
    height: 50px;
    /* background: yellow; */
    margin: 30px 0;


}
.input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    border: 2px solid rgba(255,255,255, .2);
    border-radius: 40px;
    font-size: 16px;
    color: #fff;
    padding: 20px 45px 20px 20px;

}
.input-box input::placeholder{
    color: #fff;
}
.input-box i{
    position: absolute;
    right: 20px;
    top: 30%;
    transform: translate(-50%);
    font-size: 20px;

}
.wrapper .rember-forgot{
    display: flex;
    justify-content: space-between;
    font-size: 14.5px;
    margin: -15px 0 15px;
}
.rember-forgot label input{
    accent-color: #fff;
    margin-right: 3px;
}
.rember-forgot a{
    color: #fff;
    text-decoration: none;
}
.rember-forgot a:hover{
    text-decoration: underline;
}
.wrapper .btn{
    width: 100%;
    height: 45px;
    background: #fff;
    border: none;
    outline: none;
    border-radius: 40px;
    box-shadow: 0 0 10px rgba(0,0, 0,.1);
    cursor: pointer;
    font-size: 16px;
    color: #333;
    font-weight: 600;
   
}
.wrapper .registerlink{
    font-size: 14.5px;
    text-align: center;
    margin: 20px 0 15px;
}
.registerlink p a{
    columns: #fff;
    text-decoration: none;
    font-weight: 600;
}
.registerlink p a:hover{
    text-decoration: underline;
}

</style>

</head>
<body>
<div class="wrapper">
         <form action="log" method="post">
            <h1 style="color:rgb(203, 220, 235);font-family: Georgia, 'Times New Roman', Times, serif;"> Bank login</h1>
            <div class="input-box">
                <input type="text" name="email" id="" placeholder="enter your email" required>
                <i class='bx bxs-user'></i>
            </div>
            <div class="input-box">
                <input type="password" name="pwd" id="" placeholder="enter your password" required>
                <i class='bx bxs-lock-open-alt' ></i>
            </div>
            <div class="rember-forgot">
                <label for=""><input type="checkbox" name="" id="">RemberMe</label>
                 <a href="user_forget.jsp" class="page-link-label">Forgot Password?</a>
            </div>
            <button  type="submit" class="btn">Login</button>
            <div class="registerlink">
                <p>don't have an account?<a href="Register.jsp" class="sign-up-link">Register Now</a></a></p>
            </div>
            <%String s=(String)request.getAttribute("result"); %>
        <%if(s!=null)
        	{
        	out.print("<h4 style='color:red'>"+s+"</h4>");
        	}
        	%>

        </form>
    </div>
    
        
 </div>
</body>
</html>