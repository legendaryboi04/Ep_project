<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" href="signup.css">
        <title>
            Create Account
        </title>
    </head>
    <body>
         <div class="loginbox">
            <img src="avatar.jpeg" class="avatar">
        <h1>Sign Up</h1>
        <form action="RegisterService" method="post">
        <p>Username</p>
        <input type="text" name="username" id="username" placeholder="Enter username" required>
        <p>Email</p>
        <input type="email" name="email" id="email" placeholder="Enter Email" required>
        <p>Password</p>
        <input type="password" name="password" id="password" placeholder="Enter Password" required>
        <p>Confirm Password:</p>
        <input type="password" id="confirmPassword" name="confirmPassword"  placeholder="confirm Password"   required>
        <input type="submit" value="Create Account">
        <a href="/Movie_booking/login.jsp">Already Have An Account</a><br>
        <a href="/Movie_booking"> Go Home</a>
        
        </form>
         </div>
    </body>
</html>