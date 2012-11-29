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

<script language="javascript">
function ff()
{

if(document.f2.Food Item.value=="")
{
	alert("enter valid Food Item name");
	return false;
}
if(document.f2.Carbohydrates.value=="")
{
	alert("enter valid amount of Carbohydrates");
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
		<td><input type="text" name="Food Item"><br>
		</td>
	</tr>
	<tr>
		<td>Carbohydrates</td>
		<td><input type="text" name="Carbohydrates"><br>
		</td>
	</tr>
	
	
	
	<tr>
		
		<td><input type="submit" name="submit" value="Add"></td>
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