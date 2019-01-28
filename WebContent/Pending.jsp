<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pending</title>
</head>
<body>
<%@page import="com.leave.CompanyDao"%>  
<%@page import="com.leave.LeaveRequest"%>  

<% 
String Message="Your leave is Pending";
String status="Pending";
HttpSession hs=request.getSession(false);
String s_id=(String)hs.getAttribute("id");
CompanyDao cd=new CompanyDao();
boolean flag=cd.alterTable(s_id,status,Message);
%>
</body>
</html>