<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean" />
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DiabeKare</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<%
String airbubble = "";
String ecu = "";
String hw = "";
String clocks = "";
int battery = dkbean.getCurrentBatteryStatus();
int insulinLevel = dkbean.getCurrentInsulinLevel();
response.setIntHeader("Refresh", 25);
int clock_status = dkbean.clockstatus();
if (clock_status == 0){
	clocks = "failure";
}else {
	clocks = "success";
}
int ecu_status = dkbean.ecustatus();
if (ecu_status == 0){
	ecu = "failure";
}else {
	ecu = "success";
}
int hw_status = dkbean.hardwarestatus();
if (hw_status == 0){
	hw = "failure";
}else {
	hw = "success";
}
int air_bubble = dkbean.testAirBubble();
if (air_bubble == 0){
	airbubble = "failure";
}else {
	airbubble = "success";
}
int current_bp = dkbean.getCurrentBP();
response.setIntHeader("Refresh", 25);
%>


	
<script>
var bp = 11;

function myFunction()
	{

	var r=confirm("Restore Basal Profile!");

	if (r==true)
		 {
			bp = dkbean.getCurrentBP(); //x="You pressed OK!";
		 }
	else
		 {
		bp = 0;  //x="NULL";
		 }
	
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

<body onload="startTime()">
<div id="container"> 
	<div id="header">
    	<div id="logo"><a href="#"><img src="images/logo.png" width="330" height="120"  border="0"/></a></div>
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

<div style="color: #FFFFFF;
    float: right;
    font-size: 20px;
    margin-right: 1px;
    margin-top: 25px;
    width: 210px; font-weight:bold;"><a href="logout.jsp"><p style="color: #FBF8EF">Logout</p></a>
    <font>Welcome</font> <%= session.getAttribute("username") %>
    </div>
           
                

            </div>
            
          </div>
            
        </div>
    </div>
    <TD>&nbsp;</TD>
	</tr>
	<TD>&nbsp;</TD>
	</tr>
	<TD>&nbsp;</TD>
	</tr>
	<TD>&nbsp;</TD>
	</tr>
    <div id="menubar">
            	<div id="topmenu">
			    <ul>
                    	<li><a href="Dashboard.jsp">HOME</a></li>
                        <li><a href="BasalProfile.jsp">BASAL PROFILE</a></li>
                        <li><a href="Bolus.jsp">BOLUS</a></li>
                        <li><a href="EditUserDetails.jsp">EDIT USER</a></li>
                    </ul>
                </div>
            </div>
    
 <div id="innerpage_content">
<div class="leftbox">
        	<h1>Welcome to DiabeKare Dashboard<br /><br />
            </h1>
	  <div style="float:left; width:600px;">
<table>


<tr>
	<td>Clock Status:</td>
	<td><%=clocks%><br>
	</td>
	</tr>
	<tr>
		<td>ECU status:</td>
		<td><%=ecu%><br>
		</td>
	</tr>
	<tr>
		<td>Hardware Status:</td>
		<td><%=hw%><br>
		</td>
	</tr>
	<tr>
		<td>Air Bubble:</td>
		<td><%=airbubble%><br>
		</td>
	</tr>
</td>

</tr>
</table>
</div>
	  <div class="clearfix"></div>
    </div>
        <div id="sidebar">
        <h2>Options</h2>
        <div class="features">
        	<ul>
                          
                </ul>	
<table>
<!--<tr>
<td>
		<button onclick="myFunction()">RestoreBasalProfile</button>
		</td>
</tr>
	--><tr>	
		<td>
		<input type="image" src="images/play.png" width = "50" height = "50" name="button" id="play" onclick="window.location = 
'http://localhost:8080/DiabeKare613/StartInsulin.jsp';" />
		</td>
		<td>
		
		</td>
		<td>
		<input type="image" src="images/pause.png" width = "50" height = "50" name="button" id="pause" onclick="window.location = 
'http://localhost:8080/DiabeKare613/PauseInsulin.jsp';" />
		</td>	
	</tr>
		
<tr>
<td>
		<form><input type="button" id="idname" value="Power Off"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/PowerOff.jsp';" />
		</form>
		</td>
		<td>
		<form><input type="button" id="idname" value="Power On"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/PowerOn.jsp';" />
		</form>
		</td>
		
</tr>

	<tr>
		<td>
		<form><input type="button" id="idname" value="Clock Fail"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/ClockFail.jsp';" />
		</form>
		</td>
		<td>
		<form><input type="button" id="idname" value="Clock Pass"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/ClockPass.jsp';" />
		</form>
		</td>
		
	</tr>
	<tr>
		<td>
		<form><input type="button" id="idname" value="ECU Fail"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/ECUFail.jsp';" />
		</form>
		</td>
		<td>
		<form><input type="button" id="idname" value="ECU Pass"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/ECUPass.jsp';" />
		</form>
		</td>
		<td>
		
		</td>
	</tr>
	<tr>
		<td>
		<form><input type="button" id="idname" value="H/W Fail"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/HardwareFail.jsp';" />
		</form>
		</td>
		<td>
		<form><input type="button" id="idname" value="H/W Pass"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/HardwarePass.jsp';" />
		</form>
		</td>
		<td>
		
		</td>
	</tr>
	<tr>
		<td>
		<form><input type="button" id="idname" value="Soft Reset"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/index.jsp';" />
		</form>
		</td>
		<td>
		<form><input type="button" id="idname" value="Hard Reset"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/shutdown.jsp';" />
		</form>
		</td>
	</tr>
	<tr>
	<td>
		<form><input type="button" id="idname" value="InsertAB"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/InsertAirBubble.jsp';" />
		</form>
		</td>
		<td>
		<form><input type="button" id="idname" value="RemoveAB"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/RemoveAirBubble.jsp';" />
		</form>
		</td>
		<td>
		<form><input type="button" id="idname" value="TestAB"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/TestAirBubble.jsp';" />
		</form>
		</td>		
		</tr>
		<tr>
			<td>
			<form><input type="button" id="idname" value="Battery50"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/RechargeBattery.jsp';" />
		</form>
		
			</td>
			<td>
			<form><input type="button" id="idname" value="Insulin50"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/RechargeInsulin.jsp';" />
		</form>
		
			</td>
		</tr>

	
	
</table>
			
        </div>
        <div style="margin-top:10px; float:left;">
        
	<tr>
	<td align="center" class="txtstyle4">Selected Basal Profile ID</td>
	</tr>
	
	<tr>			
		<td align="center" class="txtstyle4"><%=current_bp%></td>
	</tr>
	
	
        </div>
        
        <div class="application">
            <ul>
            	    
            </ul>
        </div>
    </div>
    </div>
    </div>
   	<div class="clearfix"></div>
    </div>
<div class="clearfix"></div>
</div>
<!--<meta HTTP-EQUIV="REFRESH" content="0; url=http://localhost:8080/DiabeKare613/SelfTest.jsp">
--><%@ include file="DiabeKareFooter.html" %>
</body>
</html>