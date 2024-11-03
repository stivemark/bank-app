<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style type="text/css">
        /* Form styling */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: url(dollars-6771253_1920.jpg) no-repeat;
            background-size: cover;
            background-position: center;
        }

        .form {
            display: flex;
            flex-direction: column;
            gap: 10px;
            max-width: 350px;
            padding: 20px;
            border-radius: 20px;
            background-color: #ffffff; /* Changed to white */
            color: #333; /* Changed text color to dark */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Added shadow for depth */
        }

        .title {
            font-size: 28px;
            font-weight: 600;
            letter-spacing: -1px;
            color: #00bfff; /* Blue color */
        }

        .message, 
        .signin {
            font-size: 14.5px;
            color: rgba(0, 0, 0, 0.7); /* Changed to dark for better visibility */
        }

        .signin {
            text-align: center;
        }

        .signin a:hover {
            text-decoration: underline royalblue;
        }

        .signin a {
            color: #00bfff; /* Blue link color */
        }

        .flex {
            display: flex;
            width: 100%;
            gap: 6px;
        }

        .form label {
            position: relative;
        }

        .form label .input {
            background-color: #f1f1f1; /* Light grey background for inputs */
            color: #333; /* Dark text color for inputs */
            width: 100%;
            padding: 10px; /* Adjusted padding for better appearance */
            outline: 0;
            border: 1px solid rgba(105, 105, 105, 0.397);
            border-radius: 10px;
        }

        .form label .input + span {
            color: rgba(0, 0, 0, 0.5); /* Dark color for placeholder */
            position: absolute;
            left: 10px;
            top: 10px;
            font-size: 0.9em;
            cursor: text;
            transition: 0.3s ease;
        }

        .form label .input:placeholder-shown + span {
            top: 12.5px;
            font-size: 0.9em;
        }

        .form label .input:focus + span,
        .form label .input:valid + span {
            color: #00bfff; /* Blue color when focused */
            top: 0px;
            font-size: 0.7em;
            font-weight: 600;
        }

        .input {
            font-size: medium;
        }

        /* Gender radio buttons */
        .gender {
            display: flex;
            justify-content: space-between;
            color: #00bfff; /* Blue color for gender text */
        }

        .gender label {
            display: flex;
            align-items: center;
            gap: 5px;
            color: #333; /* Dark color for labels */
        }

        .gender input[type="radio"] {
            accent-color: #00bfff; /* Blue accent color for radio buttons */
        }

        .submit {
            border: none;
            outline: none;
            padding: 10px;
            border-radius: 10px;
            color: #fff;
            font-size: 16px;
            transition: 0.3s ease;
            background-color: #00bfff; /* Blue button color */
            cursor: pointer;
        }

        .submit:hover {
            background-color: #00bfff96; /* Slightly transparent blue on hover */
        }
    </style>
</head>
<body>
<center>
    <form class="form" onsubmit="return validatePasswords()" action="regis" method="post">
        <p class="title">Register</p>
        <p class="message">Signup now and get full access to our bank.</p>

        <div class="flex">
            <label>
                <input class="input" type="text" name="firstname" placeholder="" required>
                <span>First Name</span>
            </label>
            <label>
                <input class="input" type="text" name="lastname" placeholder="" required>
                <span>Last Name</span>
            </label>
        </div>

        <label>
            <input class="input" type="email" name="email" placeholder="" required>
            <span>Email</span>
        </label>

        <label>
            <input class="input" type="password" name="pwd" placeholder="" required>
            <span>Password</span>
        </label>

        <label>
            <input class="input" type="number" name="age" placeholder="" required>
            <span>Age</span>
        </label>

        <label>
            <input class="input" type="text" name="address" placeholder="" required>
            <span>Address</span>
        </label>

        <label>
            <input class="input" type="tel" name="phone" placeholder="" required>
            <span>Phone Number</span>
        </label>

        <div class="gender">
            <label>
                <input type="radio" name="gender" value="male" required>
                <span>Male</span>
            </label>
            <label>
                <input type="radio" name="gender" value="female" required>
                <span>Female</span>
            </label>
            <label>
                <input type="radio" name="gender" value="other" required>
                <span>Other</span>
            </label>
        </div>

        <button class="submit">Submit</button>
        <% String s = (String) request.getAttribute("s"); %>
        <% if (s != null) { %>
            <h4 style='color:red; margin-left:10%; margin-top:20vh;'> <%= s %> </h4>
        <% } %>
        <p class="signin">Already have an account? <a href="Login.jsp">Signin</a></p>
    </form>
</center>
</body>
</html>
