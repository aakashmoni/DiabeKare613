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
        	session.setAttribute("username",username);
           	log.debug("login.jsp----"+username+ " successfully Logged in");
           	response.sendRedirect("Dashboard.jsp");
        }        
        else
          {
        	log.debug("login.jsp----"+username+ " failed Logged in");
            response.sendRedirect("failure.jsp");
          }

%>