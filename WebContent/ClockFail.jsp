<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.makeClockFail( );

response.sendRedirect("Dashboard.jsp");
%>