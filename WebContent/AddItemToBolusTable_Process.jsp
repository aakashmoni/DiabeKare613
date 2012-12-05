<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%

String food_item=request.getParameter("food_item");
String Carbohydrates=request.getParameter("Carbohydrates");
boolean flag = dkbean.insertBolusFoodConversionTable(  food_item,  Carbohydrates );
response.sendRedirect("Bolus.jsp");
%>