<%@page import="com.umd.app.diabekare.InsulinHandler"%>
<%@page import="com.umd.app.diabekare.BatteryManager"%>
<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<jsp:useBean id="ih" class="com.umd.app.diabekare.InsulinHandler"/>
<%

InsulinHandler insulinhandler = new InsulinHandler();
response.sendRedirect("Success.jsp");

%>