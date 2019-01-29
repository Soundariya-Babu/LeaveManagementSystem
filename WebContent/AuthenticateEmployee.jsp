<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession session1=request.getSession(false);
String role =(String)session.getAttribute("role");
System.out.println("Hai " + role);
if(role==null||!role.equals("Employee"))
{
response.sendRedirect("error.jsp");
}%>
</body>
</html>