<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.makeClockPass( );
response.sendRedirect("Dashboard.jsp");

%>