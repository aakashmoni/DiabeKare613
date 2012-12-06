
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
<%
String radio_value = request.getParameter("basalPID");
%>

<body>

<script language="javascript">
function ff()
{
	var i0 = document.f2.r0.value;
	var i1 = document.f2.r1.value;
	var i2 = document.f2.r2.value;
	var i3 = document.f2.r3.value;
	var i4 = document.f2.r4.value;
	var i5 = document.f2.r5.value;
	var i6 = document.f2.r6.value;
	var i7 = document.f2.r7.value;
	var i8 = document.f2.r8.value;
	var i9 = document.f2.r9.value;
	var i10 = document.f2.r10.value;
	var i11 = document.f2.r11.value;
	var i12 = document.f2.r12.value;
	var i13 = document.f2.r13.value;
	var i14 = document.f2.r14.value;
	var i15 = document.f2.r15.value;
	var i16 = document.f2.r16.value;
	var i17 = document.f2.r17.value;
	var i18 = document.f2.r18.value;
	var i19 = document.f2.r19.value;
	var i20 = document.f2.r20.value;
	var i21 = document.f2.r21.value;
	var i22 = document.f2.r22.value;
	var i23 = document.f2.r23.value;

if(document.f2.name.value=="")
{
	alert("enter valid Basal Profile Name");
	return false;
}
if(document.f2.r0.value=="")
{
	alert("enter valid rate0");
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
	alert("enter valid rate");
	return false;
}
if(document.f2.r16.value=="")
{
	alert("enter valid rate");
	return false;
}
if(document.f2.r17.value=="")
{
	alert("enter valid rate");
	return false;
}
if(document.f2.r18.value=="")
{
	alert("enter valid rate");
	return false;
}
if(document.f2.r19.value=="")
{
	alert("enter valid rate");
	return false;
}
if(document.f2.r20.value=="")
{
	alert("enter valid rate");
	return false;
}
if(document.f2.r21.value=="")
{
	alert("enter valid rate");
	return false;
}
if(document.f2.r22.value=="")
{
	alert("enter valid rate");
	return false;
}
if(document.f2.r23.value=="")
{
	alert("enter valid rate");
	return false;
}


if(isNaN(i0)){alert("enter correct rate 0");return false;}
if(isNaN(i1)){alert("enter correct rate 1");return false;}
if(isNaN(i2)){alert("enter correct rate 2");return false;}
if(isNaN(i3)){alert("enter correct rate 3");return false;}
if(isNaN(i4)){alert("enter correct rate 4");return false;}
if(isNaN(i5)){alert("enter correct rate 5");return false;}
if(isNaN(i6)){alert("enter correct rate 6");return false;}
if(isNaN(i7)){alert("enter correct rate 7");return false;}
if(isNaN(i8)){alert("enter correct rate 8");return false;}
if(isNaN(i9)){alert("enter correct rate 9");return false;}
if(isNaN(i10)){alert("enter correct rate 10");return false;}
if(isNaN(i11)){alert("enter correct rate 11");return false;}
if(isNaN(i12)){alert("enter correct rate 12");return false;}
if(isNaN(i13)){alert("enter correct rate 13");return false;}
if(isNaN(i14)){alert("enter correct rate 14");return false;}
if(isNaN(i15)){alert("enter correct rate 15");return false;}
if(isNaN(i16)){alert("enter correct rate 16");return false;}
if(isNaN(i17)){alert("enter correct rate 17");return false;}
if(isNaN(i18)){alert("enter correct rate 18");return false;}
if(isNaN(i19)){alert("enter correct rate 19");return false;}
if(isNaN(i20)){alert("enter correct rate 20");return false;}
if(isNaN(i21)){alert("enter correct rate 21");return false;}
if(isNaN(i22)){alert("enter correct rate 22");return false;}
if(isNaN(i23)){alert("enter correct rate 23");return false;}

if(document.f2.r0.value > 10)
{
	alert("value entered for Hour:00 is above the maximum allowed value");
	return false;
}

if(document.f2.r1.value > 10)
{
	alert("value entered for Hour:01 is above the maximum allowed value");
	return false;
}
if(document.f2.r2.value > 10)
{
	alert("value entered for Hour:02 is above the maximum allowed value");
	return false;
}
if(document.f2.r3.value > 10)
{
	alert("value entered for Hour:03 is above the maximum allowed value");
	return false;
}
if(document.f2.r4.value > 10)
{
	alert("value entered for Hour:04 is above the maximum allowed value");
	return false;
}
if(document.f2.r5.value > 10)
{
	alert("value entered for Hour:05 is above the maximum allowed value");
	return false;
}
if(document.f2.r6.value > 10)
{
	alert("value entered for Hour:06 is above the maximum allowed value");
	return false;
}
if(document.f2.r7.value > 10)
{
	alert("value entered for Hour:07 is above the maximum allowed value");
	return false;
}
if(document.f2.r8.value > 10)
{
	alert("value entered for Hour:08 is above the maximum allowed value");
	return false;
}
if(document.f2.r9.value > 10)
{
	alert("value entered for Hour:09 is above the maximum allowed value");
	return false;
}
if(document.f2.r10.value > 10)
{
	alert("value entered for Hour:10 is above the maximum allowed value");
	return false;
}
if(document.f2.r11.value > 10)
{
	alert("value entered for Hour:11 is above the maximum allowed value");
	return false;
}
if(document.f2.r12.value > 10)
{
	alert("value entered for Hour:12 is above the maximum allowed value");
	return false;
}
if(document.f2.r13.value > 10)
{
	alert("value entered for Hour:13 is above the maximum allowed value");
	return false;
}
if(document.f2.r14.value > 10)
{
	alert("value entered for Hour:14 is above the maximum allowed value");
	return false;
}
if(document.f2.r15.value > 10)
{
	alert("value entered for Hour:15 is above the maximum allowed value");
	return false;
}
if(document.f2.r16.value > 10)
{
	alert("value entered for Hour:16 is above the maximum allowed value");
	return false;
}
if(document.f2.r17.value > 10)
{
	alert("value entered for Hour:17 is above the maximum allowed value");
	return false;
}
if(document.f2.r18.value > 10)
{
	alert("value entered for Hour:18 is above the maximum allowed value");
	return false;
}
if(document.f2.r19.value > 10)
{
	alert("value entered for Hour:19 is above the maximum allowed value");
	return false;
}

if(document.f2.r20.value > 10)
{
	alert("value entered for Hour:20 is above the maximum allowed value");
	return false;
}

if(document.f2.r21.value > 10)
{
	alert("value entered for Hour:21 is above the maximum allowed value");
	return false;
}

if(document.f2.r22.value > 10)
{
	alert("value entered for Hour:22 is above the maximum allowed value");
	return false;
}

if(document.f2.r23.value > 10)
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
<h1>Your Selected Basal Profile</h1>

<form action="BasalProfileUpdate.jsp" name="f2" onSubmit="return ff()" method="get">

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

