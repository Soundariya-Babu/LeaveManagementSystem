<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.mindrot.jbcrypt.BCrypt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login process</title>
</head>
<body>
 <%@page import="com.leave.CompanyDao"%>  
     <%@page import="com.leave.LeaveRequest"%>  
     <%@page import="com.leave.Company" %>
    
<% 
String action=request.getParameter("action");
 if(action.equals("check"))

		{
	    String id=request.getParameter("userid");
		String password=request.getParameter("password");
		if(id==null&&password==null)
		{
			response.sendRedirect("error.jsp");
		}
		CompanyDao cd=new CompanyDao();
		String hashPass=cd.checkPassword(id);
		if(BCrypt.checkpw(password, hashPass))
		 {
			if(id.equals("101"))
			response.sendRedirect("Manager.jsp");
			else
     		response.sendRedirect("Employee.jsp");
		 }
			else
			{
				response.sendRedirect("error.jsp");
			}
		}
%>
</body>
</html>