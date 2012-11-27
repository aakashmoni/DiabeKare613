<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean" />
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="DiabeKareHeader.html"%>
<html>
<link href="style.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String radio_value = request.getParameter("basalPID");
%>

<body>
<div id="container">
<div id="innerpage_content">
<div class="leftbox">
<h1>Your Selected Basal Profile</h1>

<form action="BasalProfileUpdate.jsp" method="get">

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
		ArrayList basalProfile = dkbean.getSelectedBasalProfile(radio_value);
		for (int i = 0; i < basalProfile.size(); i++) {
		String[] value = (String[]) basalProfile.get(i);
	%>

	<tr>
		<td align="left" class="txtstyle4">
			Basal Profile ID: 		
		</td>
		<td align="left" class="txtstyle4">
			<%=value[0]%>	
		</td>
	</tr>
	
		<tr>
		<td align="left" class="txtstyle4">
			Basal Profile Name: 		
		</td>
		<td align="left" class="txtstyle4">
			<%=value[1]%>	
		</td>
	</tr>
	
	<tr>
		<td align="center" class="txtstyle4">
			<b>Hour</b>
		</td>
		
		<td align="center" class="txtstyle4">
			<b>Basal Rate</b>
		</td>
	</tr>
	
	<%
		
		for (int j = 2; j < 24; j++) {
		
	%>
	<tr>
		<td align="center" class="txtstyle4">
			<%=j -2 %>:00
		</td>
		
		<td align="center" class="txtstyle4">
			<input type="text" name="hour" value=<%=value[j]%> />
		</td>
	</tr>
	
	
	
	
	<%
		}
	%>
	
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

