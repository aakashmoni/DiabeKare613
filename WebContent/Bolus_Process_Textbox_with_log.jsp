<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
 <%@ page import="org.apache.log4j.Logger" %>
<%
Logger log = Logger.getLogger("DiabeKarelogger");
String carbs_str = request.getParameter("Carbohydrates");
int carbs = Integer.parseInt( carbs_str );

int insulin = carbs/10;
int max_insulin = 100;
if (insulin <= max_insulin){
	response.sendRedirect("Success_bolus.jsp");
	log.debug("DiabeKareBean.submitBolus==========Bolus of "+insulin+" has been given");
}
if (insulin > max_insulin){
	response.sendRedirect("Failure_bolus.jsp");
	log.debug("DiabeKareBean.submitBolus==========Bolus of "+insulin+" attempted by user. Not given");
}

%>