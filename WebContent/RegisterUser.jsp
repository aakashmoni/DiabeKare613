<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="DiabeKareHeader.jsp" %>
<html>
<link href="style.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<script language="javascript">

function ff()
{	
	var i = parseInt(document.f2.age.value);
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
if(isNaN(i))
{
	alert("enter correct age");
	return false;
}
if(i<1 ||i>100)
{
	alert("enter valid age");
	return false;
}

if(document.f2.sex.value=="" || !document.f2.sex.value=="male" || !document.f2.sex.value=="female")
{
	alert("enter valid sex");
	return false;
}

else
	return true;
}
</script>

<div id="container"> 
<div id="innerpage_content">
<div class="leftbox">
        	<h1>Register User</h1>
            <form action="RegisterUser_Process.jsp" name="f2" onSubmit="return ff()">
<table border="0">
<tr>
	<td>First Name:</td>
	<td><input type="text" name="fname"><br>
	</td>
	</tr>
	<tr>
		<td>Last Name:</td>
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
		<td> Male:<input type="radio" name="sex" value="male"><br></td>
		<td> Female:<input type="radio" name="sex" value="female"><br></td>
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