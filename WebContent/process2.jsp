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
	 CompanyDao cd=new CompanyDao();
	    String id=request.getParameter("userid");
		String password=request.getParameter("password");
		String role=cd.getRole(id);
		if(id==null&&password==null)
		{
			response.sendRedirect("error.jsp");
		}
		
		String hashPass=cd.checkPassword(id);
		HttpSession session1=request.getSession();
        session1.setAttribute("id",id);
        session1.setAttribute("role",role);
       
        if(BCrypt.checkpw(password, hashPass))
		 {
			if(role.equals("Manager"))
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