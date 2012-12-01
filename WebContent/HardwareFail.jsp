<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.makeHardwareFail( );
response.sendRedirect("Dashboard.jsp");
%>