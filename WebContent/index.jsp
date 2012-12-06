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
<script language="javascript">
    function val()
    {


      if(document.login.username.value=="")
           {
                alert("Enter  Username");
                return false;
           }
      if(document.login.password.value=="")
           {
                alert("Enter Password");
                return false;
           }
      return true;
    }
</script>

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
    	<div id="logo"><a href="#"><img src="images/logo.png" width="376" height="109"  border="0"/></a></div>
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
                <form name="login" method="post" action="Login.jsp" onsubmit="return val()">
              <div class="loginbox"><input type="text" size="16" name="username" id="txtbox" value="Username"  onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" />
            <input type="password" size="16" name="password" id="txtbox" value="Password" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" />
<input type="submit" value="login" id="submit" /></div>
</form> 
<div style="color: #FFFFFF;
    float: right;
    font-size: 15px;
    margin-right: 20px;
    margin-top: 10px;
    width: 210px; font-weight:bold;"><a href="RegisterUser.jsp">Register</a></div>
            </div>   </div>
            </div>
    </div>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <div id="menubar">
            	<div id="topmenu">
			    <ul>
                    	<li><a href="index.jsp">HOME</a></li>
                        <li><a href="about_index.jsp">ABOUT PRODUCT</a></li>
                        <li><a href="features_index.jsp">FEATURES</a></li>
                        <li><a href="contact_index.jsp">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
    <div id="banner"><img src="images/banner.jpg" width="949" height="327" /></div>
  <div id="content">
<div class="leftbox">
        	<h1>Welcome to DiabeKare<br /><br />
            </h1>
	  <div style="float:left; width:600px;">
<p style="margin-top:0px; padding-top:0px;"> <img src="images/tslim_Front_High_View-e1347628517786.jpg" width="295" height="228" style="margin:0 10px 5px 0px; float:left;" />Diabekare is a revolutionary product for diabetic patients. This is sleek, waterproof and very easy to wear. Unlike conventional Insulin pump, diabekare's User Interface is well tested for usability and human factors which makes it very easy to use. Repetitive self test which runs every 5 seconds and various safety alarms keeps the pump on constant check while being used. This intelligent pump has various new features which makes patient's life easy. It allows to add various basal profiles which can be set in accordance with your routine. User can maintain a customized food table which makes programming bolus very convenient. The product is well tested against all failures and safety hazards. The product comes with lifetime replacement warranty. 
</div>
	  <div class="clearfix"></div>
    </div>
        <div id="sidebar">
        <h2>Simulating Options</h2>
        <div class="features">
        	
           <table> 
            <tr>
		
		<td>
		<form><input type="button" id="idname" value="Clock Pass"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/ClockPass_index.jsp';" />
		</form>
		</td>
	
	</tr>
	<tr>
		
		<td>
		<form><input type="button" id="idname" value="ECU Pass"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/ECUPass_index.jsp';" />
		</form>
		</td>
		
	</tr>
	<tr>
		
		<td>
		<form><input type="button" id="idname" value="H/W Pass"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/HardwarePass_index.jsp';" />
		</form>
		</td>
		
	</tr>
	</table>
            
     
   	<div class="clearfix"></div>
    </div>
<div class="clearfix"></div>
</div>
</div>
<div id="footer">


<div style=" width:100%; text-align:center; color:#b7b6b4;">Allrights reserved &amp;  powered by DaibeKare</div>

</div>

</body>
</html>
