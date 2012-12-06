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

<script>
function myFunction()
{
    var bp1 = dkbean.getCurrentBP(); 

	var r=confirm("Restore Basal Profile "+bp1+"");

	if (r==true)
		 {
			//bp = dkbean.getCurrentBP(); //x="You pressed OK!";
			<% response.setHeader("Refresh", "4; Dashboard.jsp"); %>
		 }
	else
		 {
		//bp = null;  //x="NULL";
		<% response.setHeader("Refresh", "4; BasalProfile.jsp"); %>
		 }
}	
	</script>

<body onload="myFunction()">

</body>
<%@ include file="DiabeKareFooter.html"%>
</html>	