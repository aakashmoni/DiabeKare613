<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="DiabeKareHeader.html" %>
<html>
<link href="style.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bolus</title>
</head>

<body>
<script language="javascript">
function ff()
{
if(document.f2.carbs.value=="")
{
	alert("enter valid carb amount");
	return false;
}

else
	return true;
}
</script>

<div id="this_is_main_page">
   
       <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="50" align="left" bgcolor="#2C92C6" class="hh"><h1>&nbsp;&nbsp;Enter Bolus </h1></td>
        </tr>
    </table>


    <form action="bolus.jsp"name="f2" onSubmit="return ff()">

        <table width="100%" border="0" align="center" cellspacing="10">
            <tr>
                <td width="40%">&nbsp;</td>
                <td width="85%">&nbsp;</td>

            </tr>

            <tr>
                <td align="right" class="txtstyle4">Enter Amount of Carbohydrates</td>
                <td><input name="carbs" type="text" />   
                 <input type="image" src="images/proceed.png" name="button" id="button" value="Submit" /> </td>
            </tr>
        </table> 
    </form>
    
</div>

 
<div id="innerpage_content">
<div class="leftbox">
        	<h1>Select Food</h1>
            <form action="bolus.jsp" name="f2" >
<table border="0">
<tr>
	 <td><input type="radio" name="food" value="100"> Apple </td>
		</tr>
	<tr>
		<td><input type="radio" name="food" value="200"> Mango </td>
	</tr>
	
			
	<tr>
			<td><input type="submit" name="submit" value="Register"></td>
	</tr>
</table>
</form>
    </div>
   	<div class="clearfix"></div>
    </div>
    
    <div id="Selecting_food_items">
   
       <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="50" align="left" bgcolor="#2C92C6" class="hh"><h1>&nbsp;&nbsp;Selecting food items </h1></td>
        </tr>
    </table>


    <form action="bolus.jsp"name="f2" onSubmit="return ff()">

        <table width="100%" border="0" align="center" cellspacing="10">
            <tr>
                <td width="40%">&nbsp;</td>
                <td width="85%">&nbsp;</td>

            </tr>

            <tr>
                <td align="right" class="txtstyle4">Total Carbs</td>
                <td><input name=request.getparameter("food") type="text" />   
                 <input type="image" src="images/proceed.png" name="button" id="button" value="Submit" /> </td>
            </tr>
        </table> 
    </form>
    
</div>
    

</body>
<%@ include file="DiabeKareFooter.html" %>
</html>