<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String radio_value=request.getParameter("BID");
out.println(radio);

boolean flag = dkbean.selectBasalProfile(BID);
out.println(flag);
%>