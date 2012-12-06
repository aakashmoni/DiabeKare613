<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String radio_value = request.getParameter("basalPID");
out.println(radio_value);

boolean flag = dkbean.deleteBasalProfile(radio_value);
if (flag){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Failure.jsp");
}
//out.println(flag);
%>