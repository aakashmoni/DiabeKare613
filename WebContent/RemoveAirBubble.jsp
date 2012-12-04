<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
boolean flag = dkbean.removeAirBubble();
out.println(flag);
%>