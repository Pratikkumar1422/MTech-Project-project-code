<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>


input[type=text], input[type=password], input[type=email] {
    width: 50%;
	background-color: grey;
	color: white;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

.button {
    background-color:blue ;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 15%;
}

button:hover {
    opacity: 0.8;
}

.container {
    padding: 16px;
}
.img {
	background-image: url("train-img.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.psw {
    float: center;
    padding-top: 3px;
	background-color: yellow;
	padding-left: 5px;
	padding-right: 5px;
	padding-bottom: 3px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
	   background-color: yellow;
	   padding-top: 3px;
	   padding-left: 5px;
	   padding-right: 5px;
	   padding-bottom: 3px;
    }
}
</style>
</head>
<body class="img">
	<center><h1 style="color:purple; background-color:white">E-Ticket Booking</h1></center>
		<center>
        <h2 style="padding-top:50px; color: yellow">Login</h2>
        <p style="padding-top:10px; color: White">Please fill in your credentials to login.</p>
	</center>
	<form action="LoginDB.jsp" method="post">
	<center>
	  <div class="container" >
	  <table>
	    <tr><b style="color:white;">Email</b></tr><tr> &nbsp &nbsp &nbsp &nbsp &nbsp </tr> <tr><input type="email" placeholder="Enter Email" name="email" required></tr></br>
	    <tr><b style="color:white;">Password</b></tr><tr>&nbsp &nbsp </tr><tr><input type="password" placeholder="Enter Password" name="password" required></tr>
	  </table>    
	    <button class="button" type="submit"><b>Login</b></button>
	</center>
	</form>
	<div></div>
	<center>
	  </div>
	    <span class="psw"><a href="forgotpassword.jsp">Forgot password?</a> &nbsp &nbsp &nbsp &nbsp <a href="register.jsp" id="register">New User ?</a> </span>
	  </div>
	</center>
</body>
</html>
