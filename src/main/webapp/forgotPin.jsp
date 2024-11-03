<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Pin</title>
<link rel="stylesheet" href="user_forget.css">
<script src="user_forget.js"></script>
<script>
// JavaScript function to validate the New Pin and Confirm New Pin fields
function validatePinMatch() {
    const newPassword = document.getElementById("newPassword");
    const confirmPassword = document.getElementById("confirmPassword");
    const errorMessage = document.getElementById("error");

    if (newPassword.value !== confirmPassword.value) {
        confirmPassword.style.borderColor = "red";
        errorMessage.textContent = "Pins do not match!";
        return false;
    } else {
        confirmPassword.style.borderColor = "green";
        errorMessage.textContent = "";
        return true;
    }
}

// Add an event listener to validate the pin match when the form is submitted
document.addEventListener("DOMContentLoaded", function() {
    const resetForm = document.getElementById("resetForm");
    resetForm.addEventListener("submit", function(event) {
        if (!validatePinMatch()) {
            event.preventDefault(); // Prevent form submission if pins do not match
        }
    });

    // Real-time validation on confirm password field
    const confirmPassword = document.getElementById("confirmPassword");
    confirmPassword.addEventListener("input", validatePinMatch);
});
</script>
</head>
<body>
<div class="form-container">
    <p class="title">Reset Pin</p>
    <form class="form" id="resetForm" action="forgotpin" method="post">
        <input type="number" class="input" id="email" placeholder="Enter your phone number" required name="phoneNumber">
        <input type="password" class="input" id="newPassword" placeholder="New pin" required name="pin">
        <input type="password" class="input" id="confirmPassword" placeholder="Confirm New pin" required>
        <p id="error" class="error-message"></p>
        
        <% String s = (String) request.getAttribute("b"); %>
        <% if (s != null) { %>
            <h4 style='color:red'><%= s %></h4>
        <% } %>
        
        <button type="submit" class="form-btn">Reset Pin</button>
    </form>
    
    <p class="sign-in-label">
        Remembered your password? <a href="details.jsp" class="sign-in-link">Account details</a>
    </p>
    
    <% String s1 = (String) request.getAttribute("a"); %>
    <% if (s1 != null) { %>
        <h4 style='color:green; margin-left:10%; margin-top:20vh;'><%= s1 %></h4>
    <% } %>
</div>
</body>
</html>
