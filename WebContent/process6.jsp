

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LeaveApproval</title>
</head>
<body>
<%@page import="com.leave.CompanyDao"%>  
<%@page import="com.leave.LeaveRequest"%>  

<%
String s_id=request.getParameter("user_id");
String value=request.getParameter("value");
  if(value.equals("a"))
   {
    String Message="Your leave is accepted";
	String status="Accepted";
	
   CompanyDao cd=new CompanyDao();
	boolean flag=cd.alterTable(s_id,status,Message);
	    if(flag==true)
	    {
		 response.sendRedirect("Accept.jsp");
	    }
}
else if(value.equals("r"))
{String Message="Your leave is rejected";
String status="Rejected";

CompanyDao cd=new CompanyDao();
	boolean flag=cd.alterTable(s_id,status,Message);
	    if(flag==true)
	    {
		 response.sendRedirect("Reject.jsp");
	    }
}
else
{
	String Message="Your leave is Pending";
	String status="Pending";

	CompanyDao cd=new CompanyDao();
		boolean flag=cd.alterTable(s_id,status,Message);
		    if(flag==true)
		    {
			 response.sendRedirect("Pending.jsp");
		    }
}
%>
</body>
</html>