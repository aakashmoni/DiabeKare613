<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String id=request.getParameter("id");
out.println(id);
String fn=request.getParameter("fn");
out.println(fn);
String ln=request.getParameter("ln");
out.println(ln);
String un=request.getParameter("un");
out.println(un);
String pwd=request.getParameter("pwd");
out.println(pwd);
String age=request.getParameter("age");
out.println(age);
String sex=request.getParameter("sex");
out.println(sex);

boolean flag = dkbean.UpdateUserDetails( id,fn,ln,un,pwd,age,sex );
out.println(flag); 

if (flag){
	response.sendRedirect("Success.jsp");
}
else{
	response.sendRedirect("Failure.jsp");
}
%>