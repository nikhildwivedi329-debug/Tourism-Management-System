<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Register | Smart Tourism</title>

<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

</head>
<body>

<div class="container auth-box">
    
    <h1>Create Account</h1>
    <p class="subtitle">Join Smart Tourism Information System</p>

    <form action="RegisterServlet" method="post">

        <input type="text" name="name" placeholder="Full Name" required>

        <input type="email" name="email" placeholder="Email Address" required>

        <input type="password" name="password" placeholder="Password" required>

        <input type="submit" value="Register" class="btn">

    </form>

    <p class="switch">
        Already have an account?
        <a href="login.jsp">Login</a>
    </p>

</div>

</body>
</html>
