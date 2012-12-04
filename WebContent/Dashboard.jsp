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
int battery = dkbean.getCurrentBatteryStatus();
response.setIntHeader("Refresh", 25);
%>

<%
int current_bp = dkbean.getCurrentBP();
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

<SCRIPT language=JavaScript>
var NS4 = (document.layers);    
var IE4 = (document.all);
var win = window;    
var n   = 0;
function findInPage(str) {
  var txt, i, found;
  if (str == "")
    return false;
  if (NS4) {
    if (!win.find(str))
      while(win.find(str, false, true))
        n++;
    else
      n++;
    if (n == 0)
      alert("Not found.");
  }
  if (IE4) {
    txt = win.document.body.createTextRange();
    for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {
      txt.moveStart("character", 1);
      txt.moveEnd("textedit");
    }
    if (found) {
      txt.moveStart("character", -1);
      txt.findText(str);
      txt.select();
      txt.scrollIntoView();
      n++;
    }
    else {
      if (n > 0) {
        n = 0;
        findInPage(str);
      }
      else
        alert("Sorry, we couldn't find.Try again");
   }
  }
  return false;
}
</SCRIPT>


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
            		<FORM name=search onsubmit="return findInPage(this.string.value);">
<P align=center><FONT size=3>
<INPUT 
style="BORDER-RIGHT: #666666 1px solid; BORDER-TOP: #666666 1px solid; FONT-SIZE: 8pt; BORDER-LEFT: #666666 1px solid; BORDER-BOTTOM: #666666 1px solid" 
onchange="n = 0;" size=16 name=string></FONT><BR><INPUT style="BORDER-RIGHT: #ffffff 1px solid; BORDER-TOP: #ffffff 1px solid; FONT-SIZE: 8pt; BORDER-LEFT: #ffffff 1px solid; BORDER-BOTTOM: #ffffff 1px solid; FONT-FAMILY: Tahoma; BACKGROUND-COLOR: #aaaaaa" type=submit value=Search in page ><center><font size=2pt;><font family=Times New Roman;><b>
            		
            <div id="top_right">
            
            <div id="txt"></div>
             <div style="float:left; width:165px;"><div class="meter-wrap">
    <div class="meter-value" style="background-color: #0a0; width: 50%;">
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
                        <li><a href="Settings.jsp">SETTINGS</a></li>
                    </ul>
                </div>
            </div>
    
 <div id="innerpage_content">
<div class="leftbox">
        	<h1>Welcome to DiabeKare Dashboard<br /><br />
            </h1>
	  <div style="float:left; width:600px;">
<p style="margin-top:0px; padding-top:0px;"></p> <img src="images/tslim_Front_High_View-e1347628517786.jpg" width="295" height="228" style="margin:0 10px 5px 0px; float:left;" />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera got
</div>
	  <div class="clearfix"></div>
    </div>
        <div id="sidebar">
        <h2>Options</h2>
        <div class="features">
        	<ul>
                          
                </ul>	
	
<table>
	<tr>
		<td>
		<button onclick="myFunction()">Restore BP</button>
		</td>
	</tr>
	<tr>
		<td>
		<button type="button" id="stop">Stop</button>
		</td>
		<td>
		<button type="button" id="pause">Pause</button>
		</td>
		<td>
		<button type="button" id="play">Play</button>
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
		<td>
		<form><input type="button" id="idname" value="Clock Test"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/ClockTest.jsp';" />
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
		<form><input type="button" id="idname" value="ECU Test"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/ECUTest.jsp';" />
		</form>
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
		<form><input type="button" id="idname" value="H/W Test"
			onclick="window.location = 
'http://localhost:8080/DiabeKare613/HardwareTest.jsp';" />
		</form>
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
   	<div class="clearfix"></div>
    </div>
<div class="clearfix"></div>
</div>
<!--<meta HTTP-EQUIV="REFRESH" content="0; url=http://localhost:8080/DiabeKare613/SelfTest.jsp">
--><%@ include file="DiabeKareFooter.html" %>
</body>
</html>