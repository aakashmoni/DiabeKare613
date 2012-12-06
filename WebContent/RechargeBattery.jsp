<%@page import="com.umd.app.diabekare.BatteryManager"%>
<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<jsp:useBean id="bm" class="com.umd.app.diabekare.BatteryManager"/>
<%

dkbean.setCurrentBatteryStatus(50);
BatteryManager.cancelTimer();
response.sendRedirect("Success.jsp");

%>