<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

/* Body Styling */
body {
    background-color: #f0f8ff;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    padding: 20px;
}

/* Home Button Styling */
.home-button {
    position: absolute;
    top: 20px;
    left: 20px;
}

.home-button a {
    text-decoration: none;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.home-button a:hover {
    background-color: #45a049;
}

/* Section Styling */
.text-section {
    max-width: 800px;
    width: 100%;
}

.text-style {
    margin: 20px 0;
    padding: 20px;
    border-radius: 8px;
    background-color: #ffffff;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
}

/* Title Text */
.title-text h1 {
    font-size: 32px;
    color: #333333;
}


/* Fancy Text Style */
.fancy-text h2 {
    font-family: 'Brush Script MT', cursive;
    font-size: 28px;
    color: #ec0707;
    text-shadow: 2px 2px 8px rgba(199, 21, 133, 0.6);
}

/

/* Neon Text Style */
.neon-text h2 {
    font-size: 28px;
    color: #39ff14;
    text-shadow: 0 0 5px #39ff14, 0 0 10px #39ff14, 0 0 15px #39ff14, 0 0 20px #00e676;
}

/* Outline Text Style */
.outline-text h2 {
    font-size: 28px;
    color: transparent;
    -webkit-text-stroke: 1px #333333;
}

/* Responsive Text */
@media screen and (max-width: 600px) {
    .title-text h1 {
        font-size: 24px;
    }

    .text-style h2 {
        font-size: 24px;
    }
}

</style>
</head>
<body>

<!-- Home Button -->
<div class="home-button">
    <a href="Login.jsp">Home</a>
</div>

<!-- Text Display Section -->
<section class="text-section">
    
    
    <div class="text-style fancy-text">
        <h2>"Your profile has been successfully deleted. Please log in again."</h2>
        
    </div>

   
</section>




</body>
</html>