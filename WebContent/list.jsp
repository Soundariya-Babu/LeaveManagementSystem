
         <jsp:include page="AuthenticateManager.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
</head>
<body>
<%@ include file="AuthenticateManager.jsp" %>
     <%@page import="com.leave.CompanyDao"%>  
     <%@page import="com.leave.LeaveRequest"%>  
     <%@ page import="java.util.ArrayList" %>
     
<form method="post">
<h1>Users List</h1>  
<table>
<tr>
<td>ID</td>
<td>Name</td>
<td>LeaveDate</td>
<td>Status </td>
<td>Status Message</td>
<td>Action<td>
</tr>
<%
CompanyDao cd=new CompanyDao();
ArrayList<LeaveRequest> al=cd.listEmployee();
%>
                    <%for(LeaveRequest lq : al)
                	{%>
                <tr>
                
                    <td><%= lq.getEmp_id() %></td>
                    <td><%= lq.getEmp_name() %> </td>
                    <td><%= lq.getLeave_date() %></td>
                    <td><%= lq.getLeave_Status() %></td>
                    <td><%= lq.getStatus_msg() %></td>
                     <td>                    
	                    <a href="process6.jsp?user_id=<%= lq.getEmp_id()%>&value=a">Accept</a>
	                    <a href="process6.jsp?user_id=<%= lq.getEmp_id()%>&value=r">Reject</a>
	                    <a href="process6.jsp?user_id=<%= lq.getEmp_id()%>&value=p">Pending</a>
                    </td>
                </tr>
               <% }%>
    </table>
   
</form>
</body>
</html>