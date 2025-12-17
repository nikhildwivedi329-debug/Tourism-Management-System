<!DOCTYPE html>
<html>
<head>
<title>Forgot Password</title>


<style>
body{
    margin:0;
    font-family:Arial;
    background:linear-gradient(to right,#000428,#004e92);
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
    background:#ffcc00;
    border:none;
    border-radius:8px;
    font-weight:bold;
}
</style>

</head>

<body>

<div class="box">
<h2>Forgot Password</h2>

<form action="<%=request.getContextPath()%>/ForgotPasswordServlet" method="post">
    <input type="email" name="email" placeholder="Enter Registered Email" required>
    <button type="submit">Verify Email</button>
</form>

</div>

</body>
</html>
