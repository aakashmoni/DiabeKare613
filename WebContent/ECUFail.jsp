<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.makeECUFail( );

response.sendRedirect("Dashboard.jsp");
%>