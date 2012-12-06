
<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%

dkbean.setBatteryPause(0);

response.sendRedirect("Success.jsp");

%>