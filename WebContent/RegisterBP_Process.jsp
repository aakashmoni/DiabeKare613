<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<%@ page import="org.apache.log4j.Logger" %>
<%
Logger log = Logger.getLogger("DiabeKarelogger");
String name=request.getParameter("name");
out.println(name);
String r1=request.getParameter("r1");
out.println(r1);
String r2=request.getParameter("r2");
out.println(r2);
String r3=request.getParameter("r3");
out.println(r3);
String r4=request.getParameter("r4");
out.println(r4);
String r5=request.getParameter("r5");
out.println(r5);
String r6=request.getParameter("r6");
out.println(r6);
String r7=request.getParameter("r7");
out.println(r7);
String r8=request.getParameter("r8");
out.println(r8);
String r9=request.getParameter("r9");
out.println(r9);
String r10=request.getParameter("r10");
out.println(r10);
String r11=request.getParameter("r11");
out.println(r11);
String r12=request.getParameter("r12");
out.println(r12);
String r13=request.getParameter("r13");
out.println(r13);
String r14=request.getParameter("r14");
out.println(r14);
String r15=request.getParameter("r15");
out.println(r15);
String r16=request.getParameter("r16");
out.println(r16);
String r17=request.getParameter("r17");
out.println(r17);
String r18=request.getParameter("r18");
out.println(r18);
String r19=request.getParameter("r19");
out.println(r19);
String r20=request.getParameter("r20");
out.println(r20);
String r21=request.getParameter("r21");
out.println(r21);
String r22=request.getParameter("r22");
out.println(r22);
String r23=request.getParameter("r23");
out.println(r23);
String r24=request.getParameter("r24");
out.println(r24);
//String total = 
boolean flag = dkbean.insertBasalProfile(name,  r1,  r2,  r3,  r4,  r5,  r6,  r7,  r8,  r9,  r10,  r11,  r12,  r13,  r14,  r15,  r16,  r17,  r18,  r19,  r20,  r21,  r22,  r23,  r24);
if(flag == true)
{
	
   	log.debug(" successfully created basal profile");
   	response.sendRedirect("Success.jsp");
}        
else
  {
	log.debug("Failed to  create basal profile");
    response.sendRedirect("Failure.jsp");
  }
%>