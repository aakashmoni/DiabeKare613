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
    	<div id="logo"><a href="#"><img src="images/logo.png" width="376" height="109"  border="0"/></a></div>
        <div id="navigation">
        	<div id="top">
            
            <div id="top_right">  

            
            <div style="float:left; width:165px;"><div class="meter-wrap">
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
                <form name="login" method="post" action="Login.jsp" onsubmit="return val()">
              <div class="loginbox"><input type="text" size="16" name="username" id="txtbox" value="Username"  onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" />
            <input type="text" size="16" name="password" id="txtbox" value="Password" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" />
<input type="submit" value="login" id="submit" /></div>
</form>
<div style="color: #FFFFFF;
    float: right;
    font-size: 15px;
    margin-right: 20px;
    margin-top: 10px;
    width: 210px; font-weight:bold;"><a href="RegisterUser.jsp">Sign up</a></div>
            </div>
            
          </div>
            
        </div>
    </div>
    <div id="menubar">
            	<div id="topmenu">
			    <ul>
                    	<li><a href="index.html">HOME</a></li>
                        <li><a href="about.html">ABOUT US</a></li>
                        <li><a href="features.html">FEATURES</a></li>
                        <li><a href="contact.html">CONTACT US</a></li>
                    </ul>
                </div>
            </div>
    
  <div id="innerpage_content">
<div class="leftbox">
        	<h1>Welcome to Solarium Solar<br /><br />
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magnal.</h1>
	  <div style="float:left; width:600px;">
<p style="margin-top:0px; padding-top:0px;"></p> <img src="images/tslim_Front_High_View-e1347628517786.jpg" width="295" height="228" style="margin:0 10px 5px 0px; float:left;" />Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera got
</div>
	  <div class="clearfix"></div>
    </div>
        <div id="sidebar">
        <h2>sidebar</h2>
        <div class="features">
        	<ul>
            	<li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
               
            </ul>
        </div>
        <div style="margin-top:10px; float:left;">
        sidebar
        </div>
        
        <div class="application">
            <ul>
            	<li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
                <li>Lorem ipsum dolor sit amet</li>
               
            </ul>
        </div>
    </div>
   	<div class="clearfix"></div>
    </div>
<div class="clearfix"></div>
</div>
<div id="footer">
<div id="footermenu">

<div style=" width:100%; text-align:center; color:#b7b6b4;">Allrights reserved &amp;  powered by DaibeKare</div>

</div>
</div>
</body>
</html>
