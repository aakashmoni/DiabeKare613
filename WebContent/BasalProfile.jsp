<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="DiabeKareHeader.html" %>
<html>
<link href="style.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
<div id="container"> 
<div id="innerpage_content">
<div class="leftbox">
        	<h1>Register User</h1>
            <form action="RegisterUser_Process.jsp" name="f2" onSubmit="return ff()">
<table border="0">
<tr>
	<td>Firstname:</td>
	<td><input type="text" name="fname"><br>
	</td>
	</tr>
	<tr>
		<td>Lastname:</td>
		<td><input type="text" name="lname"><br>
		</td>
	</tr>
	<tr>
		<td>Username:</td>
		<td><input type="text" name="uname"><br>
		</td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><input type="password" name="pass"><br>
		</td>
	</tr>
	<tr>
		<td>Age:</td>
		<td><input type="text" name="age"><br>
		</td>
	</tr>
	<tr>
		<td>Sex:</td>
		<td><input type="text" name="sex"><br>
		</td>
	</tr>
	
	<tr>
		
		<td><input type="submit" name="submit" value="Register"></td>
	</tr>
</table>
</form>
    </div>
   	<div class="clearfix"></div>
    </div>
<div class="clearfix"></div>
</div>
</body>
<%@ include file="DiabeKareFooter.html" %>
</html>