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

<body>
<div id="container">
<div id="innerpage_content">
<div class="leftbox">
<h1>Bolus</h1>

<form action="Bolus_Process.jsp" method="get">

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
		<td align="center" class="txtstyle4">Item Id</td>
		<td align="center" class="txtstyle4"> Food Item </td>
		<td align="center" class="txtstyle4"> Carbohydrates </td>
	</tr>
	
	<%
		ArrayList BolusFoodConversionTable = dkbean.getBolusFoodConversionTable();
		for (int i = 0; i < BolusFoodConversionTable.size(); i++) {
			String[] value = (String[]) BolusFoodConversionTable.get(i);
	%>
	<tr>
	<td align="center" class="txtstyle4"><input type="radio" name="fooditemID" value=<%=value[0]%>></td>
		<td align="center" class="txtstyle4"><%=value[1]%></td>
		<td align="center" class="txtstyle4"><%=value[2]%></td>
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
			name="submit" value="Add Item" onclick="form.action='AddItemToBolusTable.jsp'"></td>
		
		<td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="View/Edit" onclick="form.action='ViewEditBolusTable.jsp'"></td>
			
		<td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="Delete" onclick="form.action='DeleteBolusTableItem.jsp'"></td>		
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
		