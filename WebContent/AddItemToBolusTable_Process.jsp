<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String item_id=request.getParameter("Item Id");
out.println(item_id);
String food_item=request.getParameter("Food Item");
out.println(food_item);
String carbohydrates=request.getParameter("Carbohydrates");
out.println(carbohydrates);
boolean flag = dkbean.insertBolusFoodConversionTable( item_id,  food_item,  carbohydrates );
out.println(flag);
%>