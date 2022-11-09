<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<style>
.img {
	background-image: url("ticket.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
input[type=text], input[type=date], input[type=email] {
    width: 100%;
	background-color: White;
	padding: 8px 40px;
	color: black;
    border: 1px solid #ccc;
    box-sizing: border-box;
	border-radius: 4px;
}
.button {
    background-color:orange ;
	padding: 6px 10px;
    color: white;
    border: none;
    cursor: pointer;
    width: 15%;
	border-radius: 2px;
	border: 1px solid black;
}
.container {
    padding: 0px;
}
.button1 {
    background-color:orange ;
	padding: 4px 10px;
    color: white;
    border: none;
    cursor: pointer;
    width: 100%;
	border-radius: 2px;
	border: 1px solid black;
}
select {
    width: 100%;
    padding: 8px 40px;
    border: 1px solid #ccc;
    box-sizing: border-box;
	background-color: White;
	color: black;
	border-radius: 4px;
} 
</style>
</head>
<body class="img">
<h1 style="color: white; padding-top: 10px;"><b>Welcome User...</b></h1>
<h2 style="background-color: orange; width: 10%" align="center"><a href="index.jsp">LogOut</a></h2>
<form action="" method="post">
<div align="right" class="container">
<table>
<tr><button class="button" type="button"><b>Home</b></button></tr>
<tr><button class="button" type="button"><b>Booking History</b></button></tr>
<tr><button class="button" type="button"><b>PNR Status</b></button></tr>
<tr><td><h3 style="color: white">Book a ticket</h3></td></tr>
<tr><td><button class="button1" type="button"><b>Search</b></td><td></button><button class="button1" type="reset"><b>Reset</b></button></td></tr>
<tr><td><h3 style="color: white">Journey Date</h3></td><td> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td><td><input type="date" name="jdate"></td></tr>
<tr><td><h3 style="color: white">Source Station</h3></td><td> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td><td><Select name="ss" id="sStation"><option name="default1">Select Station</option><option name="Patna">Patna</option>
<option name="Delhi">Delhi</option><option name="Banagalore">Bangalore</option><option name="Mumbai">Mumbai</option><option name="Kolkata">Kolkata</option>
<option name="Ahmedabad">Ahmedabad</option><option name="Chennai">Chennai</option></td></tr>
<tr><td><h3 style="color: white">Destination Station</h3></td><td> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td><td><Select name="ds" id="dStation"><option name="default2">Select Station</option><option name="PatnaD">Patna</option>
<option name="DelhiD">Delhi</option><option name="BanagaloreD">Bangalore</option><option name="MumbaiD">Mumbai</option><option name="KolkataD">Kolkata</option>
<option name="AhmedabadD">Ahmedabad</option><option name="ChennaiD">Chennai</option></td></tr>
<tr><td><h3 style="color: white">Select Train</h3></td><td> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td><td><Select name="train" id="Train"><option name="default3">Select Train</option><option name="15609">15609-Abadh Assam Express</option>
<option name="58719">58719-Abhanpur Rajim NG Passenger</option><option name="58721">58721-Abhanpur Rajim NG Passenger</option><option name="54703">54703-Abohar Jodhpur Passenger</option><option name="04722">04722-Abohar Jodhpur Passenger Special</option>
<option name="79438">79438-Abu Road Mahesana DEMU</option><option name="09438">09438-Abu Road Mahesana DEMU Special</option></td></tr>
<tr><td><h3 style="color: white">Classes </h3></td><td> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td><td><Select name="tier" id="Tier"><option name="All">All Classes</option>
<option name="2s">Second Sitting (2S)</option><option name="SL">Sleeper (SL)</option><option name="CC">AC Chair car (CC)</option><option name="3E">AC 3 Economy (3E)</option>
<option name="3A">AC 3 Tier (3A)</option><option name="FC">First Class (FC)</option><option name="2A">AC 2 Tier (2A)</option></td></tr>
<tr><td><h3 style="color: white">Classes </h3></td><td> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td><td><Select name="tier" id="Tier"><option name="gen">GENERAL</option>
<option name="lds">LADIES</option><option name="lbsrc">LOWER BERTH / SR.CITIZEN</option><option name="dvng">DIVYANG</option><option name="ttk">TATKAL</option>
<option name="Pttk">PREMIUM TATKAL</option></td></tr>
</table>
</div>
</form>
</body>
</html>