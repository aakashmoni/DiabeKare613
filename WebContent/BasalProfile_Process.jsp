<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String radio_value = request.getParameter("basalPID");
//out.println(radio_value);

boolean flag = dkbean.selectBasalProfile(radio_value);
//out.println(flag);
if (flag){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Failure.jsp");
}
%>