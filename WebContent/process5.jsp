<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave Request</title>
</head>
<body>
<%@page import="com.leave.CompanyDao"%>  
     <%@page import="com.leave.LeaveRequest"%>  
     <%@page import="com.leave.Company" %>
<% 

String action=request.getParameter("action"); 
if(action.equals("Request Leave"))
		{
			String id=request.getParameter("id");
			String name=request.getParameter("name");
			String leavedate=request.getParameter("leavedate");
			String reason=request.getParameter("reason");
			String leavestatus="nil";
			String statusmsg="nil";
			HttpSession ses=request.getSession();
			ses.setAttribute("id", id);
			CompanyDao cd=new CompanyDao();
			LeaveRequest lq=new LeaveRequest(id,name,leavedate,reason,leavestatus,statusmsg);
			boolean flag=cd.addLeaveRequest(lq);
			if(flag==true)
			{
				response.sendRedirect("new.jsp");
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
			
		}%>	

</body>
</html>