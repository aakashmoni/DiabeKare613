<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.makeHardwarePass( );
response.sendRedirect("index.jsp");
%>