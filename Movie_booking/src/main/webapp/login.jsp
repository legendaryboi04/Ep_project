<html>
    <head>
        <link rel="stylesheet" href="cinelogin.css">
        <title>
            Login
        </title>
    </head>
    <body>
         <div class="loginbox">
            <img src="avatar.jpeg" class="avatar">
        <h1>Login Here</h1>
        <form action="LoginService" method="post">
        <p>Username</p>
        <input type="text" name="username" id="username" placeholder="Enter username" required>
        <p>Password</p>
        <input type="password" name="password" placeholder="Enter Password" required>
        <input type="submit" value="Login">
        <a href="/Movie_booking/register.jsp">Dont have an Account</a><br>
        <a href="/Movie_booking"> Go Home</a>
        </form>
         </div>
    </body>
</html>