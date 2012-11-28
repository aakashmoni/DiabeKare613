<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String Item_Id=request.getParameter("Item Id");
out.println(Item_Id);
String Food_Item=request.getParameter("Food Item");
out.println(Food_Item);
String Carbohydrates=request.getParameter("Carbohydrates");
out.println(Carbohydrates);
boolean flag = dkbean.insertBolusFoodConversionTable( Item_Id,  Food_Item,  Carbohydrates );
out.println(flag);
%>