<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%

String food_item=request.getParameter("Food Item");
out.println(food_item);
String carbohydrates=request.getParameter("Carbohydrates");
out.println(carbohydrates);
boolean flag = dkbean.insertBolusFoodConversionTable(  food_item,  carbohydrates );
out.println(flag);
%>