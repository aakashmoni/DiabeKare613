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

if(document.f2.name.value=="")
{
	alert("enter valid basal name");
	return false;
}

if(document.f2.r1.value=="")
{
	alert("enter valid rate1");
	return false;
}
if(document.f2.r2.value=="")
{
	alert("enter valid rate2");
	return false;
}
if(document.f2.r3.value=="")
{
	alert("enter valid rate3");
	return false;
}
if(document.f2.r4.value=="")
{
	alert("enter valid rate4");
	return false;
}
if(document.f2.r5.value=="")
{
	alert("enter valid rate5");
	return false;
}
if(document.f2.r6.value=="")
{
	alert("enter valid rate6");
	return false;
}
if(document.f2.r7.value=="")
{
	alert("enter valid rate7");
	return false;
}
if(document.f2.r8.value=="")
{
	alert("enter valid rate8");
	return false;
}
if(document.f2.r9.value=="")
{
	alert("enter valid rate9");
	return false;
}
if(document.f2.r10.value=="")
{
	alert("enter valid rate10");
	return false;
}
if(document.f2.r11.value=="")
{
	alert("enter valid rate11");
	return false;
}
if(document.f2.r12.value=="")
{
	alert("enter valid rate12");
	return false;
}
if(document.f2.r13.value=="")
{
	alert("enter valid rate13");
	return false;
}
if(document.f2.r14.value=="")
{
	alert("enter valid rate14");
	return false;
}
if(document.f2.r15.value=="")
{
	alert("enter valid rate15");
	return false;
}
if(document.f2.r16.value=="")
{
	alert("enter valid rate16");
	return false;
}
if(document.f2.r17.value=="")
{
	alert("enter valid rate17");
	return false;
}
if(document.f2.r18.value=="")
{
	alert("enter valid rate18");
	return false;
}
if(document.f2.r19.value=="")
{
	alert("enter valid rate19");
	return false;
}
if(document.f2.r20.value=="")
{
	alert("enter valid rate20");
	return false;
}
if(document.f2.r21.value=="")
{
	alert("enter valid rate21");
	return false;
}
if(document.f2.r22.value=="")
{
	alert("enter valid rate22");
	return false;
}
if(document.f2.r23.value=="")
{
	alert("enter valid rate23");
	return false;
}

if(document.f2.r24.value=="")
{
	alert("enter valid rate24");
	return false;
}


if(document.f2.r1.value > 10)
{
	alert("value entered for Hour:00 is above the maximum allowed value");
	return false;
}

if(document.f2.r2.value > 10)
{
	alert("value entered for Hour:01 is above the maximum allowed value");
	return false;
}
if(document.f2.r3.value > 10)
{
	alert("value entered for Hour:02 is above the maximum allowed value");
	return false;
}
if(document.f2.r4.value > 10)
{
	alert("value entered for Hour:03 is above the maximum allowed value");
	return false;
}
if(document.f2.r5.value > 10)
{
	alert("value entered for Hour:04 is above the maximum allowed value");
	return false;
}
if(document.f2.r6.value > 10)
{
	alert("value entered for Hour:05 is above the maximum allowed value");
	return false;
}
if(document.f2.r7.value > 10)
{
	alert("value entered for Hour:06 is above the maximum allowed value");
	return false;
}
if(document.f2.r8.value > 10)
{
	alert("value entered for Hour:07 is above the maximum allowed value");
	return false;
}
if(document.f2.r9.value > 10)
{
	alert("value entered for Hour:08 is above the maximum allowed value");
	return false;
}
if(document.f2.r10.value > 10)
{
	alert("value entered for Hour:09 is above the maximum allowed value");
	return false;
}
if(document.f2.r11.value > 10)
{
	alert("value entered for Hour:10 is above the maximum allowed value");
	return false;
}
if(document.f2.r12.value > 10)
{
	alert("value entered for Hour:11 is above the maximum allowed value");
	return false;
}
if(document.f2.r13.value > 10)
{
	alert("value entered for Hour:12 is above the maximum allowed value");
	return false;
}
if(document.f2.r14.value > 10)
{
	alert("value entered for Hour:13 is above the maximum allowed value");
	return false;
}
if(document.f2.r15.value > 10)
{
	alert("value entered for Hour:14 is above the maximum allowed value");
	return false;
}
if(document.f2.r16.value > 10)
{
	alert("value entered for Hour:15 is above the maximum allowed value");
	return false;
}
if(document.f2.r17.value > 10)
{
	alert("value entered for Hour:16 is above the maximum allowed value");
	return false;
}
if(document.f2.r18.value > 10)
{
	alert("value entered for Hour:17 is above the maximum allowed value");
	return false;
}
if(document.f2.r19.value > 10)
{
	alert("value entered for Hour:18 is above the maximum allowed value");
	return false;
}
if(document.f2.r20.value > 10)
{
	alert("value entered for Hour:19 is above the maximum allowed value");
	return false;
}

if(document.f2.r21.value > 10)
{
	alert("value entered for Hour:20 is above the maximum allowed value");
	return false;
}

if(document.f2.r22.value > 10)
{
	alert("value entered for Hour:21 is above the maximum allowed value");
	return false;
}

if(document.f2.r23.value > 10)
{
	alert("value entered for Hour:22 is above the maximum allowed value");
	return false;
}

if(document.f2.r24.value > 10)
{
	alert("value entered for Hour:23 is above the maximum allowed value");
	return false;
}

else
	return true;
}

</script>

<div id="container"> 
<div id="innerpage_content">
<div class="leftbox">
        	<h1>Register New Basal Profile</h1>
            <form action="RegisterBP_Process.jsp" name="f2" onSubmit="return ff()">
<table border="0">

	<tr>
		<td>Name:</td>
		<td><input type="text" name="name"><br>
		</td>
	</tr>
	
	<tr>
		<td>Hour1:</td>
		<td><input type="text" name="r1"><br>
		</td>
	</tr>
	<tr>
		<td>Hour2:</td>
		<td><input type="text" name="r2"><br>
		</td>
	</tr>
	<tr>
		<td>Hour3:</td>
		<td><input type="text" name="r3"><br>
		</td>
	</tr>
	<tr>
		<td>Hour4:</td>
		<td><input type="text" name="r4"><br>
		</td>
	</tr>
	<tr>
		<td>Hour5:</td>
		<td><input type="text" name="r5"><br>
		</td>
	</tr>
	<tr>
		<td>Hour6:</td>
		<td><input type="text" name="r6"><br>
		</td>
	</tr>
	<tr>
		<td>Hour7:</td>
		<td><input type="text" name="r7"><br>
		</td>
	</tr>
	<tr>
		<td>Hour8:</td>
		<td><input type="text" name="r8"><br>
		</td>
	</tr>
	<tr>
		<td>Hour9:</td>
		<td><input type="text" name="r9"><br>
		</td>
	</tr>
	<tr>
		<td>Hour10:</td>
		<td><input type="text" name="r10"><br>
		</td>
	</tr>
	
	<tr>
		<td>Hour11:</td>
		<td><input type="text" name="r11"><br>
		</td>
	</tr>
	<tr>
		<td>Hour12:</td>
		<td><input type="text" name="r12"><br>
		</td>
	</tr>
	<tr>
		<td>Hour13:</td>
		<td><input type="text" name="r13"><br>
		</td>
	</tr>
	<tr>
		<td>Hour14:</td>
		<td><input type="text" name="r14"><br>
		</td>
	</tr>
	<tr>
		<td>Hour15:</td>
		<td><input type="text" name="r15"><br>
		</td>
	</tr>
	<tr>
		<td>Hour16:</td>
		<td><input type="text" name="r16"><br>
		</td>
	</tr>
	<tr>
		<td>Hour17:</td>
		<td><input type="text" name="r17"><br>
		</td>
	</tr>
	<tr>
		<td>Hour18:</td>
		<td><input type="text" name="r18"><br>
		</td>
	</tr>
	<tr>
		<td>Hour19:</td>
		<td><input type="text" name="r19"><br>
		</td>
	</tr>
	<tr>
		<td>Hour20:</td>
		<td><input type="text" name="r20"><br>
		</td>
	</tr>
	<tr>
		<td>Hour21:</td>
		<td><input type="text" name="r21"><br>
		</td>
	</tr>
	<tr>
		<td>Hour22:</td>
		<td><input type="text" name="r22"><br>
		</td>
	</tr>
	<tr>
		<td>Hour23:</td>
		<td><input type="text" name="r23"><br>
		</td>
	</tr>
	<tr>
		<td>Hour24:</td>
		<td><input type="text" name="r24"><br>
		</td>
	</tr>
	
	
	<tr>
		
		<td><input type="submit" name="submit" value="Register"></td>
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