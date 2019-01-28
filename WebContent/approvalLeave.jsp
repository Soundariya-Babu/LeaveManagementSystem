<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager leave approval</title>
</head>
<body>
 <%@page import="com.leave.CompanyDao"%>  
     <%@page import="com.leave.LeaveRequest"%>  
     <%@page import="com.leave.Company" %>
     <form action="process6.jsp" method="post">
     <table><tr>
    <td>ID</td>
    <td>Name</td>
    <td>Date</td>
    <td>Reason</td>
    <td>Action</td>
</tr>
<%
HttpSession ses=request.getSession(false);
String s_id=(String)ses.getAttribute("id");
CompanyDao cd=new CompanyDao();
LeaveRequest lq=cd.leaveStatus(s_id);
request.setAttribute("lq",lq);
%>

    <tr>
                    <td> <%= lq.getEmp_id() %> </td>
                    <td> <%= lq.getEmp_name() %> </td>
                    <td> <%= lq.getLeave_date() %> </td>
                    <td> <%= lq.getReason() %> </td>
                    <td>                    
	                    <a href="process6.jsp?user_id=<%= lq.getEmp_id()%>&value=a">Accept</a>
	                    <a href="process6.jsp?user_id=<%= lq.getEmp_id()%>&value=r">Reject</a>
	                    <a href="process6.jsp?user_id=<%= lq.getEmp_id()%>&value=p">Pending</a>
                    </td>
		     </tr>
     </table></form>
     
</body>
</html>