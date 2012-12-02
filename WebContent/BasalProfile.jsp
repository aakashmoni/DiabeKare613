
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="DiabeKareHeader.jsp"%> 
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
<h1>Basal Profiles</h1>

<form action="Register_BP.jsp" method="get">
<button name="subject" type="submit" value="fav_HTML">Create New</button>
</form>

<form action="BasalProfile_Process.jsp" method="get">

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

	<tr>
		<td align="center" class="txtstyle4">Basal Profile ID</td>
		<td align="center" class="txtstyle4">Name</td>
		<!--<td align="center" class="txtstyle4">View / Edit Profile</td>
		<td align="center" class="txtstyle4">Delete Profile</td>
		
	--></tr>

	<%
		ArrayList basalProfiles = dkbean.getBasalProfiles();
		for (int i = 0; i < basalProfiles.size(); i++) {
			String[] value = (String[]) basalProfiles.get(i);
	%>

	<tr>
		<!--<td align="center" class="txtstyle4"><%=value[0]%></td>-->

		<td align="center" class="txtstyle4"><input type="radio" name="basalPID" value=<%=value[0]%>></td>
		<td align="center" class="txtstyle4"><%=value[1]%></td>

		<!--<td align="center" class="txtstyle4">
			<button type="button">View / Edit</button>
		</td>

		<td align="center" class="txtstyle4">
			<button type="button">Delete</button>
		</td>
		
	--></tr>
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
	
		<td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="Submit"></td>
		
		<td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="View/Edit" onclick="form.action='ViewEditBasalProfile.jsp'"></td>
			
		<td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="Delete" onclick="form.action='DeleteBasalProfile.jsp'"></td>		
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