<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%

String food_item=request.getParameter("Food Item");
out.println(food_item);
String Carbohydrates=request.getParameter("Carbohydrates");
out.println(Carbohydrates);
boolean flag = dkbean.insertBolusFoodConversionTable(  food_item,  Carbohydrates );
out.println(flag);
%>