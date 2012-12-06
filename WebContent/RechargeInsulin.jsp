
<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%

dkbean.setCurrentInsulinLevel(50);

response.sendRedirect("Success.jsp");

%>