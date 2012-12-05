<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String radio_value = request.getParameter("fooditemID");
//out.println(radio_value);

String carbs_str = dkbean.submitBolus(radio_value);
//out.println(carbs);
 int carbs = Integer.parseInt( carbs_str );
int bolus_insulin = carbs/10;
int max_insulin = 100;
if (bolus_insulin <= max_insulin){
	int current_insulin = dkbean.getCurrentInsulinLevel();
	out.println(current_insulin);
	int new_current_insulin = current_insulin - bolus_insulin; 
	dkbean.setCurrentInsulinLevel(new_current_insulin);
	out.println(new_current_insulin);
	response.sendRedirect("Success_bolus.jsp");
}
if (bolus_insulin > max_insulin){
	
	response.sendRedirect("Failure_bolus.jsp");
}

%>