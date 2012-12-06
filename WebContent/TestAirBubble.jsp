<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
int flag = dkbean.testAirBubble();
out.println(flag);
if (flag==0){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Failure.jsp");
}
%>