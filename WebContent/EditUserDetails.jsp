
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="DiabeKareHeader.jsp"%>
<html>
<link href="style.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User Details</title>
</head>


<body>
<script language="javascript">

function ff()
{	
	var i = document.f2.age.value;
if(document.f2.fn.value=="")
{
	alert("enter valid first name");
	return false;
}
if(document.f2.ln.value=="")
{
	alert("enter valid last name");
	return false;
}
if(document.f2.un.value=="")
{
	alert("enter valid user name");
	return false;
}
if(document.f2.pwd.value=="")
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
<h1>User Details</h1>

<form action="UserDetailsUpdate.jsp" name="f2" method="get" onSubmit="return ff()">

<table border="0">

	<tr>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
	</tr>
	<tr>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
	</tr>

	<%
		ArrayList user_profile = dkbean.getUserDetails();
		for (int i = 0; i < user_profile.size(); i++) {
		String[] value = (String[]) user_profile.get(i);		
		
	%>

	<tr>
		<td align="left" class="txtstyle4">
			 		
		</td>
		<td align="left" class="txtstyle4">
			<input type="hidden" name="user_id" value=<%=value[0]%> />
		</td>
		
	</tr>
	
		<tr>
		<td align="left"" class="txtstyle4">
			First Name: 		
		</td>
		<td align="left"" class="txtstyle4">
			<input type="text" name="fn" value=<%=value[1]%> />
		</td>
		</tr>
		<tr>
		<td align="left"" class="txtstyle4">
			Last Name: 		
		</td>
		<td align="left"" class="txtstyle4">
			<input type="text" name="ln" value=<%=value[2]%> />
		</td>
		</tr>
		<tr>
		<td align="left"" class="txtstyle4">
			Username: 		
		</td>
		<td align="left"" class="txtstyle4">
			<input type="text" name="un" value=<%=value[3]%> />
		</td>
		</tr>
		<tr>
		<td align="left"" class="txtstyle4">
			Password: 		
		</td>
		<td align="left"" class="txtstyle4">
			<input type="password" name="pwd" value=<%=value[4]%> />
		</td>
		</tr>
		<tr>
		<td align="left"" class="txtstyle4">
			Age: 		
		</td>
		<td align="left"" class="txtstyle4">
			<input type="text" name="age" value=<%=value[5]%> />
		</td>
		</tr>
		<tr>
		<td align="left"" class="txtstyle4">
			Sex: 		
		</td>
		<td> Male:<input type="radio" name="sex" value="male">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Female:<input type="radio" name="sex" value="female"><br></td>
	
		</tr>
	
	
	

	
	<%
		}
	%>
	
	<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
	<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
	
	
	
</table>
<table border="0"><!--

	<tr>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
	</tr>
	--><tr>
	<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td align="left" class="txtstyle4"><input type="submit"
			name="submit" value="Submit"></td>
	</tr>
</table>


</form>
</div>
<div class="clearfix"></div>
</div>
<div class="clearfix"></div>
</div>
</body>
<%@ include file="DiabeKareFooter.html"%>
</html>

