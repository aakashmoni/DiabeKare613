<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
int flag = dkbean.testAirBubble();
out.println(flag);
%>