<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%
String fname=request.getParameter("fname");
out.println(fname);
String lname=request.getParameter("lname");
out.println(lname);
String uname=request.getParameter("uname");
out.println(uname);
String pass=request.getParameter("pass");
out.println(pass);
String age=request.getParameter("age");
out.println(age);
String sex=request.getParameter("sex");
out.println(sex);

boolean flag = dkbean.insertUserDetails(fname,lname,uname,pass,age,sex);
out.println(flag);
%>