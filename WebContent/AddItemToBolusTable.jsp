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
	var i = parseInt(document.f2.Carbohydrates.value);
	if(isNaN(i))
	{
		alert("enter an interger value for carbohydrates");
		return false;
	}
	if(i<= 0)
	{
		alert("Value entered is Zero or Negative. Please enter a Positive integer value for Carbohydrates");
		return false;
	}
	if(i>=1000)
	{
		alert("Warning: Insulin value might exceed Max Insulin Limit");
		return true;	
		
	}
	
if(document.f2.Fooditem.value=="")
{
	alert("enter valid Food Item name");
	return false;
}
if(document.f2.Carbohydrates.value=="")
{
	alert("enter a positive integer value for Carbohydrates");
	return false;
}

else
	return true;
}

</script>

<div id="container"> 
<div id="innerpage_content">
<div class="leftbox">
        	<h1>Adding New Item to Bolus Table</h1>
            <form action="AddItemToBolusTable_Process.jsp" name="f2" onSubmit="return ff()">
<table border="0">


	<tr>
		<td>Food Item</td>
		<td><input type="text" name="Fooditem"><br>
		</td>
	</tr>
	<tr>
		<td>Carbohydrates</td>
		<td><input type="text" name="Carbohydrates"><br>
		</td>
	</tr>
	
	
	
	<tr>
		
		<td><input type="submit" name="submit" value="Submit"></td>
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