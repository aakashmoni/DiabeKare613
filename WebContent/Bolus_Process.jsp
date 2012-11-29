<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String radio_value = request.getParameter("fooditemID");
//out.println(radio_value);

String carbs_str = dkbean.submitBolus(radio_value);
//out.println(carbs);
 int carbs = Integer.parseInt( carbs_str );
int insulin = carbs/10;
int max_insulin = 100;
if (insulin <= max_insulin){
	response.sendRedirect("Success_bolus.jsp");
}
if (insulin > max_insulin){
	response.sendRedirect("Failure_bolus.jsp");
}

%>