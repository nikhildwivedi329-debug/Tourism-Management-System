<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>

<div class="login container">
<h2>Login</h2>

<%
String msg = request.getParameter("msg");
if ("registered".equals(msg)) {
%>
    <div style="
        color: #00ff7f;
        margin-bottom: 12px;
        text-align: center;
        font-weight: bold;
        font-size: 16px;
    ">
        ✔ Registration Successful!
    </div>
<%
}
%>


<form action="login" method="post">
<input type="email" name="email" placeholder="Email" required><br>
<input type="password" name="password" placeholder="Password" required><br>
<input type="submit" value="🔐 Login">
</form>

<a href="forgot-password.jsp">Forgot Password?</a>

</div>

</body>
</html>