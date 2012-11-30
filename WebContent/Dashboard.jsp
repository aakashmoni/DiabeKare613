<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>DiabeKare</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
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
<div id="container"> 
	<div id="header">
    	<div id="logo"><a href="#"><img src="images/logo.png" width="330" height="120"  border="0"/></a></div>
        <div id="navigation">
        	<div id="top">
            
            <div id="top_right"> <div style="float:left; width:165px;"><div class="meter-wrap">
    <div class="meter-value" style="background-color: #0a0; width: 50%;">
        <div class="meter-text">
            Insulin
        </div>
    </div>
</div></div>
              <div style="float:left; width:132px;"><div class="battery-wrap">
    <div class="battery-value" style="background-color: #0a0; width: 80%;">
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
    width: 210px; font-weight:bold;"><a href="logout.jsp"><p style="color: #FBF8EF">Logout</p></a></div>
           
                

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
               	<td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="Self Test" onclick="form.action='self_test.jsp'"></td>
				</tr>
                <tr>	
                <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="Clock Fail" onclick="form.action='clock_fail.jsp'"></td>
			 <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="Clock Fix" onclick="form.action='clock_fix.jsp'"></td>
			 <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="Clock Test" onclick="form.action='clock_test.jsp'"></td>
			</tr>
			<tr>
			   <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="ECU Fail" onclick="form.action='ecu_fail.jsp'"></td>
			 <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="ECU Fix" onclick="form.action='ecu_fix.jsp'"></td>
			 <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="ECU Test" onclick="form.action='ecu_test.jsp'"></td>
			</tr>
			<tr>
			   <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="H/W Fail" onclick="form.action='hardware_fail.jsp'"></td>
			 <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="H/W Fix" onclick="form.action='hardware_fix.jsp'"></td>
			 <td align="center" class="txtstyle4"><input type="submit"
			name="submit" value="H/W Test" onclick="form.action='hardware_test.jsp'"></td>
			</tr>
			</table>
			
        </div>
        <div style="margin-top:10px; float:left;">
        sidebar
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

<%@ include file="DiabeKareFooter.html" %>
</body>
</html>