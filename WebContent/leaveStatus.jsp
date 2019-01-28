<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LeaveStatus</title>
</head>
<body>
 <%@page import="com.leave.CompanyDao"%>  
     <%@page import="com.leave.LeaveRequest"%>  
<form method="post">
<h1>Users List</h1>  
<table>
<tr>
<td>Status </td>
<td>Status Message</td>
</tr>
<%
HttpSession ses=request.getSession(false);
String s_id=(String)ses.getAttribute("id");
CompanyDao cd=new CompanyDao();
LeaveRequest lq=cd.leaveStatus(s_id);
request.setAttribute("lq",lq);

%>

                <tr>
                    <td><%= lq.getLeave_Status() %></td>
                    <td><%= lq.getStatus_msg() %></td>
                </tr>
    </table>
   
</form>

</body>
</html>