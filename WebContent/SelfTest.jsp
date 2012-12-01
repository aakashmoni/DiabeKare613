<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
int clock_state = dkbean.clockstatus();
int ecu_state = dkbean.ecustatus();
int hardware_state = dkbean.hardwarestatus();
if ((clock_state == 0) || (ecu_state == 0) || (hardware_state == 0))
{
alert ("Self Test Failed");
response.sendRedirect("index.html");
}
if ((clock_state && ecu_state && hardware_state) == 1)
{
alert ("Self Test Passed");
response.sendRedirect("Dashboard.jsp");
}
%>