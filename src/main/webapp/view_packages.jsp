<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Packages</title>

<style>
body {
  margin: 0;
  padding: 0;
  font-family: 'Poppins', sans-serif;
  height: 100vh;
  background: url("https://images.unsplash.com/photo-1501785888041-af3ef285b470")
              no-repeat center center fixed;
  background-size: cover;
  display: flex;
  justify-content: center;
  align-items: center;
  overflow: hidden;
}

.container {
  background: rgba(0, 0, 0, 0.45);
  padding: 50px 80px;
  border-radius: 22px;
  text-align: center;
  backdrop-filter:(8px);
  -webkit-backdrop-filter: blur(8px);
  box-shadow: 0 12px 35px rgba(0, 0, 0, 0.55);
  animation: slideUp 1s ease;
}

.container h1 {
  font-size: 3rem;
  color: #ffffff;
  margin-bottom: 25px;
  letter-spacing: 1px;
}

.container a {
  color: #ffd700;
  font-size: 1.1rem;
  font-weight: 600;
  margin: 0 14px;
  text-decoration: none;
  transition: 0.3s ease;
}

.container a:hover {
  color: #00ffff;
  text-decoration: underline;
}

@keyframes slideUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.container a {
  color: #ffd700;
  font-size: 1.1rem;
  font-weight: 600;
  margin: 0 14px;
  text-decoration: none;
  padding: 6px 14px;
  border-radius: 20px;
  transition: 0.3s ease;
}

.container a:hover {
  background: rgba(255, 215, 0, 0.15);
  color: #00ffff;
  box-shadow: 0 0 18px rgba(0, 255, 255, 0.9);
}

</style>

</head>

<body>

<div class="container">
  <h1>Bharat Darshan</h1>

  <a href="locations.jsp">Location</a> |
  <a href="logout">Logout</a>
</div>

</body>
</html>
