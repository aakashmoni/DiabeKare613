<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="DiabeKareHeader.html"%>
<html>
<link href="style.css" rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<script>
function startTime()
{
var today=new Date();
var h=today.getHours();
var m=today.getMinutes();
var s=today.getSeconds();
// add a zero in front of numbers<10
m=checkTime(m);
s=checkTime(s);
document.getElementById('txt').innerHTML=h+":"+m+":"+s;
t=setTimeout(function(){startTime()},500);
}

function checkTime(i)
{
if (i<10)
  {
  i="0" + i;
  }
return i;
}
</script>
<body onload="startTime()">


<div id="txt"></div>

<div id="message">
<div id="sample"></div>
<table>
	<tr>
		<TD>&nbsp;</TD>
	</tr>

	<tr>
		<TD>&nbsp;</TD>
	</tr>

	<tr>
		<TD>&nbsp;</TD>
	</tr>

	<tr>
		<TD>&nbsp;</TD>
	</tr>

	<tr>
		<TD>&nbsp;</TD>
	</tr>

	<tr>
		<TD>&nbsp;</TD>
	</tr>
	<tr>
		<TD>&nbsp;</TD>
	</tr>
	
</table>
<div id="success">
<div id="success_img"></div>
<div id="success_text">Success..!!</div>
</div>
</div>





</body>

</html>