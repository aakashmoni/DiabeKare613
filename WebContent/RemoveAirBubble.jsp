<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.removeAirBubble();

response.sendRedirect("Dashboard.jsp");
%>