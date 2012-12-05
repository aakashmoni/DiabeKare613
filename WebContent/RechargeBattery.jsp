<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%

dkbean.setCurrentBatteryStatus(50);
response.sendRedirect("Success.jsp");

%>