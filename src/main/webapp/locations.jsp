<!DOCTYPE html>
<html>

<head>

<title>Select State</title>
<style>
body{
    margin:0;
    font-family:Poppins, sans-serif;
    background:url("https://www.shutterstock.com/shutterstock/videos/3652356463/thumb/1.jpg?ip=x480")
        no-repeat center center fixed;
    background-size:cover;
    color:white;

    height:100vh;
    overflow:hidden;
}

.container{
    width:80%;
    margin:auto;
    margin-top:30px;

    max-height:85vh;
    overflow-y:auto;

    padding:30px;
    border-radius:15px;
    text-align:center;
}

.container::-webkit-scrollbar{
    width:0;
    display:none;
}
.container{
    scrollbar-width:none;
}


h1{
    font-size:3rem;
    text-shadow:0 0 10px #000;
}

.state-list{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.state{
    padding:20px;
    background:rgba(0,0,0,0.6);
    border-radius:10px;
    font-size:1.4rem;
    cursor:pointer;
    color:yellow;
    transition:0.3s;
    text-decoration:none;
}

.state:hover{
    background:white;
    color:black;
    transform:scale(1.08);
}
</style>
</head>

<body>
<div class="container">
<h1>GoExplore India</h1>
<h2></h2>
<h1>Select State</h1>

<div class="state-list">

    <a class="state" href="places.jsp?state=Uttarakhand">Uttarakhand</a>
    <a class="state" href="places.jsp?state=Maharashtra">Maharashtra</a>
    <a class="state" href="places.jsp?state=Tamil Nadu">Tamil Nadu</a>
    <a class="state" href="places.jsp?state=Gujarat">Gujarat</a>
    <a class="state" href="places.jsp?state=Madhya Pradesh">Madhya Pradesh</a>
    <a class="state" href="places.jsp?state=Rajasthan">Rajasthan</a>
    <a class="state" href="places.jsp?state=Himachal Pradesh">Himachal Pradesh</a>
    <a class="state" href="places.jsp?state=Punjab">Punjab</a>
    <a class="state" href="places.jsp?state=Bangal">Bangal</a>
    <a class="state" href="places.jsp?state=Jharkhand">Jharkhand</a>
    <a class="state" href="places.jsp?state=Karnatak">Karnatak</a>
    <a class="state" href="places.jsp?state=Kerala">Kerala</a>
    <a class="state" href="places.jsp?state=Uttar Pradesh">Uttar Pradesh</a>
    <a class="state" href="places.jsp?state=Assam">Assam</a>
    <a class="state" href="places.jsp?state=Sikkim">Sikkim</a>
    <a class="state" href="places.jsp?state=Telangana">Telangana</a>
    <a class="state" href="places.jsp?state=Goa">Goa</a>
    <a class="state" href="places.jsp?state=Haryana">Haryana</a>
    <a class="state" href="places.jsp?state=Arunachal Pradesh">Arunachal Pradesh</a>
    <a class="state" href="places.jsp?state=Chhattisgarh">Chhattisgarh</a>
    <a class="state" href="places.jsp?state=Mizoram">Mizoram</a>
    <a class="state" href="places.jsp?state=Manipur">Manipur</a>
    <a class="state" href="places.jsp?state=Meghalaya">Meghalaya</a>
    <a class="state" href="places.jsp?state=Bihar">Bihar</a>
    <a class="state" href="places.jsp?state=Nagaland">Nagaland</a>
    <a class="state" href="places.jsp?state=Tripura">Tripura</a>
    <a class="state" href="places.jsp?state=Andhra Pradesh">Andhra Pradesh</a>
    <a class="state" href="places.jsp?state=Odisha">Odisha</a>

    
</div>
</div>
</body>
</html>
