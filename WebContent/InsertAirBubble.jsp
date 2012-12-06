<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.insertAirBubble();

response.sendRedirect("Dashboard.jsp");
%>
