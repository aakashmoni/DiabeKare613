<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.makeECUPass( );

response.sendRedirect("Dashboard.jsp");
%>