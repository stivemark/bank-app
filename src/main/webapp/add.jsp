<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="add.css">
<style type="text/css">
body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url('https://cdn.pixabay.com/photo/2023/07/28/08/06/ai-generated-8154776_1280.jpg') no-repeat;
   
    
    background-size: 10ver;
    background-position:center;
   

 
}


.form-container {
    width: 350px;
    height: auto;
    background-color: #fff;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    border-radius: 10px;
    padding: 20px 30px;
}

.title {
    text-align: center;
    font-size: 28px;
    font-weight: 800;
    margin-bottom: 20px;
}

.form {
    display: flex;
    flex-direction: column;
    gap: 18px;
}

.input {
    border-radius: 20px;
    border: 1px solid #c0c0c0;
    outline: none;
    padding: 12px 15px;
}

.form-btn {
    padding: 10px 15px;
    border-radius: 20px;
    border: none;
    background-color: teal;
    color: white;
    cursor: pointer;
    box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}

.form-btn:hover {
    background-color: darkcyan;
}

.redirect-label {
    margin-top: 15px;
    text-align: center;
}

.redirect-link {
    text-decoration: underline;
    color: teal;
    cursor: pointer;
}

.redirect-link:hover {
    color: darkcyan;
}

</style>
</head>
<body>
<div class="form-container">
        <h2 class="title">Add Amount</h2>
        <form class="form" onsubmit="return handleSubmit()">
            <input type="number" class="input" placeholder="Enter amount to add" required>
            <input type="password" class="input" placeholder="Enter PIN" required>
            <button type="submit" class="form-btn">Add Amount</button>
        </form>
        <p class="redirect-label">Already have an account? <a href="home.jsp" class="redirect-link">Go to Home Page</a></p>
    </div>

    <script src="add.js"></script>

</body>
</html>