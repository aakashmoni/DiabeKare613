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
String radio_value = request.getParameter("fooditemID");
%>

<body>
<div id="container">
<div id="innerpage_content">
<div class="leftbox">
<h1>Your Selected Bolus Food Item</h1>

<form action="BolusUpdate.jsp" method="get">

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
		ArrayList BolusTableItem = dkbean.getSelectedBolusTableItem(radio_value);
		for (int i = 0; i < BolusTableItem.size(); i++) {
		String[] value = (String[]) BolusTableItem.get(i);
	%>

	<tr>
		<td align="left" class="txtstyle4">
			Food Item ID: 		
		</td>
		<td align="left" class="txtstyle4">
			<%=value[0]%>	
		</td>
	</tr>
	
		<tr>
		<td align="left" class="txtstyle4">
			Food Item Name: 		
		</td>
		<td align="left" class="txtstyle4">
			<%=value[1]%>	
		</td>
	</tr>
	
		<tr>
		<td align="left" class="txtstyle4">
			Carbohydrates: 		
		</td>
		<td align="left" class="txtstyle4">
			<%=value[2]%>	
		</td>
	</tr>
	
	
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
			name="submit" value="View/Edit" onclick="form.action='ViewEditBolusTable.jsp'"></td>
			
		<td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="Delete" onclick="form.action='DeleteBolusTable.jsp'"></td>		
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

