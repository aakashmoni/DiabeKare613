<%@ page language="java" import="java.sql.*,java.util.*" %>
<%@ page import="org.apache.log4j.Logger" %>
<jsp:useBean id="dkbean" class="com.umd.app.diabekare.DiabeKareBean"/>
<jsp:setProperty name="dkbean" property="*"/>
<% 
	 	Logger log = Logger.getLogger("DiabeKarelogger");
        String username = request.getParameter("username");
        String password = request.getParameter("password");        
        System.out.println("User name:"+username);
        System.out.println("Password:"+password);
        boolean flag = dkbean.login(username,password);
        session.setAttribute("name",username);
        if(flag == true)
        {
            response.sendRedirect("Dashboard.jsp");
           	log.debug("login.jsp----"+username+ " successfully Logged in");
        }        
        else
          {
            response.sendRedirect("a_invalid_user.jsp");
          }

%>