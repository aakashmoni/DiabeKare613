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
			 		
		</td>
		<td align="left" class="txtstyle4">
			<input type="hidden" name="id" value=<%=value[0]%> />
		</td>
		
	</tr>
	
		<tr>
		<td align="left"" class="txtstyle4">
			Basal Profile Name: 		
		</td>
		<td align="left"" class="txtstyle4">
			<input type="text" name="name" value=<%=value[1]%> />
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
	<tr>
		<td align="center" class="txtstyle4">00:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r0" value=<%=value[2]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">01:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r1" value=<%=value[3]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">02:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r2" value=<%=value[4]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">03:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r3" value=<%=value[5]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">04:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r4" value=<%=value[6]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">05:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r5" value=<%=value[7]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">06:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r6" value=<%=value[8]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">07:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r7" value=<%=value[9]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">08:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r8" value=<%=value[10]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">09:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r9" value=<%=value[11]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">10:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r10" value=<%=value[12]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">11:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r11" value=<%=value[13]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">12:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r12" value=<%=value[14]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">13:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r13" value=<%=value[15]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">14:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r14" value=<%=value[16]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">15:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r15" value=<%=value[17]%> /></td>
	</tr>

	<tr>
		<td align="center" class="txtstyle4">16:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r16" value=<%=value[18]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">17:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r17" value=<%=value[19]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">18:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r18" value=<%=value[22]%> /></td>
	</tr>
	<tr>
	
		<td align="center" class="txtstyle4">19:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r19" value=<%=value[21]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">20:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r20" value=<%=value[22]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">21:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r21" value=<%=value[23]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">22:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r22" value=<%=value[24]%> /></td>
	</tr>
	<tr>
		<td align="center" class="txtstyle4">23:00</td>
		<td align="center" class="txtstyle4">
			<input type="text" name="r23" value=<%=value[25]%> /></td>
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

