<%@page import="org.mindrot.jbcrypt.BCrypt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Processing</title>
</head>
<body>
 <%@page import="com.leave.CompanyDao"%>  
     <%@page import="com.leave.LeaveRequest"%>  
     <%@page import="com.leave.Company" %>
  

<% String action=request.getParameter("action"); 
if(action.equals("submit"))
		{
	     String id=request.getParameter("id");
		String name=request.getParameter("name");
		String role=request.getParameter("role");
		String password=request.getParameter("password");
		String managerId=request.getParameter("managerid");
		
        
        if(id==null&&name==null&&role==null&&password==null&&managerId==null)
        {
        	response.sendRedirect("error.jsp");
        }
        String hashPass=BCrypt.hashpw(password, BCrypt.gensalt());
        Company com=new Company(id,name,role,hashPass,managerId);
        CompanyDao cd=new CompanyDao();
        boolean flag=cd.saveEmployee(com);
          if(flag==true)
          {
	     	response.sendRedirect("login.jsp");
          }
          else
          {
        	 response.sendRedirect("error.jsp");
          }

		}%>
</body>
</html>