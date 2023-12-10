
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link rel="stylesheet" href="css/login.css">
<%--  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">--%>
  <title>Login</title>
</head>

<body>

<div class="container" id="container">
  <div class="form-container sign-up">
    <form action="signup" method="post">
      <h1>Create Account</h1>
      <div class="social-icons">
        <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
        <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
        <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
        <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
      </div>
      <span>or use your email for registeration</span>
      <input type="userName" name="userName" placeholder="Name">
      <input type="email" name="email" placeholder="Email">
      <input type="password" name="password" placeholder="Password">
      <input type="password" name="repassword" placeholder="rePassword">
      <button>Sign Up</button>
    </form>
  </div>
  <div class="form-container sign-in">
    <form action="login" method="post">
      <h1>Sign In</h1>
<%--      <div class="alert alert-danger" role="alert" style="color: red; ">--%>
      <p style="color: red;">${mes}</p>

    <%--      </div>--%>
      <div class="social-icons">
        <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
        <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
        <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
        <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
      </div>
      <span>or use your email password</span>
      <input name = "email" type="email"  placeholder="Email">
      <input name="password" type="password"  placeholder="Password">
      <a href="#">Forget Your Password?</a>
      <button type="submit">Sign In</button>
    </form>
  </div>
  <div class="toggle-container">
    <div class="toggle">
      <div class="toggle-panel toggle-left">
        <h1>Welcome Back!</h1>
        <p>Enter your personal details to use all of site features</p>
        <button class="hidden" id="login">Sign In</button>
      </div>
      <div class="toggle-panel toggle-right">
        <h1>Hello, Friend!</h1>
        <p>Register with your personal details to use all of site features</p>
        <button class="hidden" id="register">Sign Up</button>
      </div>
    </div>
  </div>
</div>

<script src="javascript/login.js"></script>
</body>

</html>