<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%@ page import="java.util.ArrayList" %>
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
        	<h1>Basal Profiles</h1>

<form action="BasalProfile_Process.jsp" name="f2" onSubmit="return ff()" method="get">
<table border="0">

	<tr>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
	</tr>

<tr>
	<td align="center" class="txtstyle4">
	<button type="button" onclick="alert('Hello world!')">Create New</button>
	</td>
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
		<td align="center" class="txtstyle4">View / Edit Profile</td>
		<td align="center" class="txtstyle4">Delete Profile</td>
		
		<!--<td align="center" class="txtstyle4">Class</td>
		<td align="center" class="txtstyle4">Division</td>
		<td align="center" class="txtstyle4">House</td>
		-->
	</tr>

	<%
		ArrayList f = dkbean.getBasalProfiles();
		for (int i = 0; i < f.size(); i++) {
			String[] value = (String[]) f.get(i);
	%>

	<tr>
		<!--<td align="center" class="txtstyle4"><%=value[0]%></td>-->
		
		<td align="center" class="txtstyle4"><input type="radio" name="BID" value=value[0]><%=value[0]%></td>
		<td align="center" class="txtstyle4"><%=value[1]%></td>
		
		<td align="center" class="txtstyle4">
			<button type="button" onclick="alert('Hello world!')">View / Edit</button>
		</td>
		
		<td align="center" class="txtstyle4">
			<button type="button" onclick="alert('Hello world!')">Delete</button>
		</td>
		
		<!--<td align="center" class="txtstyle4"><%=value[1]%></td>
      <td align="center" class="txtstyle4"><%=value[2]%></td>
      <td align="center" class="txtstyle4"><%=value[3]%></td>
	  -->
	</tr>
	<%
		}
	%>
<tr>
<td align="center" class="txtstyle4"><input type="submit" name="submit" value="Submit"></td>
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