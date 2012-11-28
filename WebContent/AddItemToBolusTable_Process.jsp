<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String name=request.getParameter("Item Id");
out.println(Item Id);
String r1=request.getParameter("Food Item");
out.println(Food Item);
String r2=request.getParameter("Carbohydrates");
out.println(Carbohydrates);
boolean flag = dkbean.insertBolusFoodConversionTable( Item Id,  Food Item,  Carbohydrates );
out.println(flag);
%>