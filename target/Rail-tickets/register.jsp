
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style>


input[type=text], input[type=password], input[type=email] {
    width: 50%;
    padding: 12px 15px;
    margin: 3px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	background-color: grey;
	color: white;
}
input[type=tel] {
    width: 20%;
    padding: 12px 15px;
    margin: 3px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	background-color: grey;
	color: white;
} 
select {
    width: 20%;
    padding: 12px 15px;
    margin: 3px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	background-color: grey;
	color: white;
} 
.img {
	background-image: url("train-img.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
button {
    background-color: blue;
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

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
}
</style>
</head>
<body class="img">
	<center><h1 style="color:purple; background-color:white">E-Ticket Booking</h1></center>
	<center>
	<h1 style="padding-top:50px; color: yellow">Registration Form</h1>
	<p style="padding-top:10px; color: White">Please fill in the form to get register.</p>
	<form action="connectDB.jsp" method="post">
	  <div class="container">
	    <table>
	    <tr><b style="color:white;">Full Name</b></tr> <tr> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </tr> <tr><input type="text" placeholder="Enter you name" name="fname" required></tr></br>
	    <tr><b style="color:white;">Phone</b></tr><tr> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </tr><tr><input type="tel" name="phone"  pattern="[0-9]{10}" placeholder="Enter phone number" name="number" required></tr>
		<tr> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <b style="color:white;">Gender &nbsp </b></tr>
		<tr>
		<select name="gender" id="g"><option value="male">Male</option><option value="female">Female</option><option value="others">Others</option></select>
		</tr></br>
		<tr><b style="color:white;">Password</b></tr><tr> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </tr> <tr><input type="password" placeholder="Enter Password" name="password" required></tr></br>
		<tr><b style="color:white;">Confirm Password</b></tr><tr> &nbsp </tr> <tr><input type="password" placeholder="confirm your Password" name="cpassword" required></tr></br>
		<tr><b style="color:white;">Email</b></tr> <tr> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </tr> <tr><input type="email" placeholder="Enter Email" name="email" required></tr></br>
		</table> 
	    <button type="submit"><b>Register</b></button>
	  </div>
</form>
</center>
</body>
</html>