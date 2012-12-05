<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
int clock_state = dkbean.clockstatus();
int ecu_state = dkbean.ecustatus();
int hardware_state = dkbean.hardwarestatus();
if ((clock_state == 0) || (ecu_state == 0) || (hardware_state == 0))
{
	%><script language="javascript" type="text/javascript">
	alert("Self Test Failed")
	</script><%

	response.setHeader("Refresh", "4; index.jsp");
}
if ((clock_state == 1) && (ecu_state ==1) && (hardware_state == 1))
{
	%><script language="javascript" type="text/javascript">
	alert("Self Test Passed")
	</script><%
	response.setHeader("Refresh", "4; Bolus.jsp"); 
}
%>