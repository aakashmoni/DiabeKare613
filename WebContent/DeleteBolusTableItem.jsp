<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String radio_value = request.getParameter("fooditemID");
out.println(radio_value);

boolean flag = dkbean.deleteBolusTableItem(radio_value);
//out.println(flag);
%>