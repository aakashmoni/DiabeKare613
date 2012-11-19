
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<script language="javascript">
function ff()
{
if(document.f2.fname.value=="")
{
	alert("enter valid first name");
	return false;
}
if(document.f2.lname.value=="")
{
	alert("enter valid last name");
	return false;
}
if(document.f2.uname.value=="")
{
	alert("enter valid user name");
	return false;
}
if(document.f2.pass.value=="")
{
	alert("enter valid password");
	return false;
}
if(document.f2.age.value=="")
{
	alert("enter valid age");
	return false;
}
if(document.f2.sex.value=="")
{
	alert("enter valid sex");
	return false;
}

else
	return true;
}
</script>


<body>
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

</body>
</html>