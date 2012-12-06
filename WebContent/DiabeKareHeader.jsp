<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*,java.util.*" %>
<%@ page import="org.apache.log4j.Logger" %>
<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<jsp:setProperty name="dkbean" property="*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DiabeKare</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<%
int battery = dkbean.getCurrentBatteryStatus();
int insulinLevel = dkbean.getCurrentInsulinLevel();
response.setIntHeader("Refresh", 30);
%>
<script>
function startTime()
{
<%
	int clockStatus = dkbean.clockstatus();
%>
var clockStatus = "<%=clockStatus%>";
	
var today=new Date();
var h=today.getHours();
var m=today.getMinutes();
var s=today.getSeconds();
// add a zero in front of numbers<10
m=checkTime(m);
s=checkTime(s);
if (clockStatus == 1){
document.getElementById('txt').innerHTML=h+":"+m+":"+s;
}else{
	document.getElementById('txt').innerHTML="Clock Fail";
}
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

<div id="container"> 
	<div id="header">
    	<div id="logo"><a href="#"><img src="images/logo.png" width="376" height="120"  border="0"/></a></div>
        <div id="navigation">
        	<div id="top">
            
            <div id="top_right"> 
            <div id="txt"></div>
            <div style="float:left; width:165px;"><div class="meter-wrap">
    <%
          if(insulinLevel < 20){
             %>
             <div class="meter-value" style="background-color: #a90000; width: <%=insulinLevel%>%;">
    	<%}else{ %>
    <div class="meter-value" style="background-color: #0a0; width: <%=insulinLevel%>%;">
     <%} %>
        <div class="meter-text">
            Insulin
        </div>
    </div>
</div></div>
              <div style="float:left; width:132px;"><div class="battery-wrap">
    <%
    if(battery < 20){
    %>
    	<div class="battery-value" style="background-color: #a90000; width: <%=battery%>%;">
    <%}else{ %>
    	<div class="battery-value" style="background-color: #0a0; width: <%=battery%>%;">
    <%} %>
        <div class="battery-text">
            Battery
        </div>
    </div>
</div></div>
              

            </div>
            
          </div>
            
        </div>
    </div>
    <div id="menubar">
            	<div id="topmenu">
			    <ul>
                    	<li><a href="Dashboard.jsp">HOME</a></li>
                        <li><a href="about.html">ABOUT PRODUCT</a></li>
                        <li><a href="features.html">FEATURES</a></li>
                        <li><a href="contact.html">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
    
  

</div>

</body>
</html>