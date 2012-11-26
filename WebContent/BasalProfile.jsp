<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%@ page import="java.util.ArrayList" %>
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
<div id="container"> 
<div id="innerpage_content">
<div class="leftbox">
        	<h1>Basal Profiles</h1>
            <form action="BasalProfile_Process.jsp" name="f2" onSubmit="return ff()">
<table border="0">

	<tr>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
		<td width="20%">&nbsp;</td>
	</tr>

	<tr>
		<td align="right" class="txtstyle4">Basal ID</td>
		<td align="right" class="txtstyle4">Class</td>
		<td align="right" class="txtstyle4">Division</td>
		<td align="right" class="txtstyle4">House</td>
	</tr>

	<%
		ArrayList f = dkbean.getBasalProfiles();
		for (int i = 0; i < f.size(); i++) {
			String[] value = (String[]) f.get(i);
	%>


    





  <tr>
      <td align="right" class="txtstyle4"><%=value[0]%></td>
      <td align="right" class="txtstyle4"><%=value[1]%></td>
      <td align="right" class="txtstyle4"><%=value[2]%></td>
      <td align="right" class="txtstyle4"><%=value[3]%></td>



     
  </tr>
  <%
  	}
  %>
  

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