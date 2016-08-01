<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<form action="Reg" method="post" class="form-inline">
<table   align="center" 
			title="REGISTER NOW" cellspacing="5" width="200">
			<tr><td><input type="hidden" name="role" value="user"></td></tr>
			<tr><td style="border: 0px;text-align: left;">Enter Name</td></tr>
			<tr><td style="border: 0px;"><input type="text" name="name" placeholder="enter your name" size="35" class="form-control" required></td></tr>
			<tr><td style="border: 0px;text-align: left;">Enter Email ID</td></tr>
			<tr><td style="border: 0px;"><input type="text" name="eid" placeholder="enter your email id" size="35" class="form-control" required></td></tr>
			<tr><td style="border: 0px;text-align: left;">Enter Password</td></tr>
			<tr><td style="border: 0px;"><input type="password" name="pass" placeholder="enter your password" size="35" class="form-control" required></td></tr>
			<tr><td style="border: 0px;text-align: left;">Confirm Password</td></tr>
			<tr><td style="border: 0px;"><input type="password" name="pass" placeholder="enter your password" size="35" class="form-control" required></td></tr>
			<tr><td style="border: 0px;text-align: left;">Select Gender</td></tr>
			<tr>
			<td style="border: 0px;">
			<input type="radio" name="gender" value="Male" checked="checked" class="form-control"> Male
			<input type="radio" name="gender"  value="Female"> Female
			<input type="radio" name="gender"  value="Others"> Others</td>
			</tr>
			<tr><td style="border: 0px;text-align: left;">Choose your Location</td></tr>
			<tr><td style="border: 0px;text-align: left;"><select name="loc"  style="width: 280px;" class="form-control">
              <option>Choose</option><option>North Kolkata</option>
              <option>Central Kolkata</option><option>South Kolkata</option>
              </select></td></tr>
              
              <tr><td style="border: 0px;text-align: left;">Enter phone no</td></tr>
			<tr><td style="border: 0px;"><input type="text" name="phn" placeholder="Enter your phone no" size="35" class="form-control" required></td></tr>
			<tr>
			 <tr><td style="border: 0px;text-align: left;">Enter Age</td></tr>
			<tr><td style="border: 0px;"><input type="text" name="age" placeholder="Enter your age" size="35" class="form-control" required></td></tr>
			<tr>
				<td colSpan="1" align="center" style="background-color: #555555; font-weight: bolder; padding: 5px; margin-top: 10px;">
				<input type="submit" value="Submit" class="form-control"></td></tr>
				   
		</table>

	</form>
	
</body>
</html>