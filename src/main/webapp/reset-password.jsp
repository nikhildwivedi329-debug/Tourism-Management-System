<!DOCTYPE html>
<html>
<head>
<title>Reset Password</title>

<style>
body{
    margin:0;
    font-family:Arial;
    background:linear-gradient(to right,#232526,#414345);
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.box{
    background:white;
    padding:30px;
    width:350px;
    border-radius:15px;
    text-align:center;
}

input{
    width:90%;
    padding:10px;
    margin:10px 0;
    border-radius:8px;
}

button{
    padding:10px 20px;
    background:#00cc66;
    border:none;
    border-radius:8px;
    font-weight:bold;
}
</style>

</head>

<body>

<div class="box">
<h2>Reset Password</h2>

<form action="ResetPasswordServlet" method="post">
    <input type="hidden" name="email" value="<%=request.getParameter("email")%>">

    <input type="password" name="newPassword" 
           placeholder="New Password" required>

    <input type="password" name="confirmPassword" 
           placeholder="Confirm Password" required>

    <button type="submit">Update Password</button>
</form>


</div>

</body>
</html>
