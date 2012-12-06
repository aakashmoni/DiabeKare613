<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%@ page import="org.apache.log4j.Logger" %>
<%
Logger log = Logger.getLogger("DiabeKarelogger");
int clock_state = dkbean.clockstatus();
int ecu_state = dkbean.ecustatus();
int hardware_state = dkbean.hardwarestatus();
if ((clock_state == 0) )
{
	%><script language="javascript" type="text/javascript">
	alert("Self Test Failed - Clock Fail")
	</script><%
	log.debug("Self Test Fail - Clock Fail");
	response.setHeader("Refresh", "1; index.jsp");
}
if ((ecu_state == 0) )
{
	%><script language="javascript" type="text/javascript">
	alert("Self Test Failed - ECU Fail")
	</script><%
	log.debug("Self Test Fail - ECU Fail");
	response.setHeader("Refresh", "1; index.jsp");
}
if ((hardware_state == 0) )
{
	%><script language="javascript" type="text/javascript">
	alert("Self Test Failed - Hardware Fail")
	</script><%
	log.debug("Self Test Fail - Hardware Fail");
	response.setHeader("Refresh", "1; index.jsp");
}
if ((clock_state == 1) && (ecu_state ==1) && (hardware_state == 1))
{
	%><script language="javascript" type="text/javascript">
	alert("Self Test Passed")
	</script><%
	log.debug("Self Test Pass");
	response.setHeader("Refresh", "0.5; Dashboard.jsp"); 
}
%>