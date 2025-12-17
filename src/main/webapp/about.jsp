<!DOCTYPE html>
<html>
<head>
<title>About - Smart Tourism Information System</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>
        body{
            margin:0;
            font-family:'Poppins', sans-serif;
            background:url("https://images.unsplash.com/photo-1500530855697-b586d89ba3ee") 
                       no-repeat center/cover fixed;
              overflow: hidden;
            
            color:#fff;
            
            
            
        }

        .overlay{
            min-height:100vh;
            
            padding:40px 0;
        }

        .container{
            width:85%;
            margin:auto;
            scrollbar-width:none;
            max-height:85vh;
            
            padding:30px;
            overflow-y:auto;
            
            
        }

        

        h1{
            text-align:center;
            font-size:3rem;
            margin-bottom:20px;
        }

        .intro{
            text-align:center;
            font-size:1.2rem;
            max-width:900px;
            margin:0 auto 40px;
            line-height:1.7;
        }

        .cards{
            display:grid;
            grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
            gap:25px;
        }

        .card{
            background:rgba(0,0,0,0.6);
            padding:25px;
            border-radius:15px;
            text-align:center;
            transition:0.3s;
        }

        .card:hover{
            transform:translateY(-8px);
            background:rgba(255,255,255,0.1);
        }

        .card i{
            font-size:2.5rem;
            color:#ffd700;
            margin-bottom:15px;
        }

        .card h3{
            margin-bottom:10px;
        }

        .card p{
            font-size:0.95rem;
            line-height:1.6;
        }

        .tech{
            margin-top:50px;
            text-align:center;
        }

        .tech span{
            display:inline-block;
            margin:10px;
            padding:10px 18px;
            background:#ffd700;
            color:#000;
            border-radius:20px;
            font-weight:600;
        }

        .footer{
            margin-top:60px;
            text-align:center;
        }

        .footer a{
            text-decoration:none;
            background:#ffd700;
            color:#000;
            padding:10px 25px;
            border-radius:25px;
            font-weight:600;
        }

        .footer a:hover{
            background:#00ffff;
        }
    </style>
</head>

<body>

<div class="overlay">
<div class="container">

    <h1>About Smart Tourism Information System</h1>

    <p class="intro">
        Smart Tourism Information System is a modern web-based platform designed
        to provide fast, reliable and well-organized tourism information for users
        across India. It helps travelers explore destinations easily and plan trips
        efficiently from a single interface.
    </p>
    
<h1>Follow the Steps</h1>

<div class="cards">

     <div class="card step">
        <div class="step-no">Step 1</div>
        <i class="fas fa-user-plus"></i>
        <h3>Register Yourself & Login</h3>
        <p>
            Create your account by registering with basic details.
            Registration helps you access personalized tourism
            information and features.
        </p>
    </div>
    
   <div class="card step">
        <div class="step-no">Step 2</div>
        <i class="fas fa-map-marked-alt"></i>
        <h3>Choose Location</h3>
        <p>
            Select your preferred state or location from the list
            to explore tourism destinations available in that region.
        </p>
    </div>
    
    <div class="card step">
        <div class="step-no">Step 3</div>
        <i class="fas fa-location-dot"></i>
        <h3>Select Place</h3>
        <p>
            Browse places within the selected state and
            click on any location to view detailed information.
        </p>
    </div>

    

    <div class="card step">
        <div class="step-no">Step 4</div>
        <i class="fas fa-route"></i>
        <h3>Plan Your Trip</h3>
        <p>
            Use the provided information to plan your travel,
            explore nearby attractions and enjoy your journey.
        </p>
    </div>

</div>


    

    <div class="footer">
        <br>
        <a href="index.jsp">Back to Home</a>
    </div>

</div>
</div>

</body>
</html>
