<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
//var bp = 11;
function myFunction()
	{

	var r=confirm("Restore Basal Profile!");

	if (r==true)
		{
			
			//alert("Pressed Ok");	
			
			<% response.setHeader("Refresh", "2; Dashboard.jsp"); %>
		 }
	else
		 {	
			response.sendRedirect("BasalProfile.jsp");
		 }
	
	}
</script>

<body onload="myFunction()">
</body>
</html>