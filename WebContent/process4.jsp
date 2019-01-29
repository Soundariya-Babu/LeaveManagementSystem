<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Process</title>
</head>
<body>
<%String action=request.getParameter("action");
if(action.equals("Leave Request"))
{
	response.sendRedirect("leaveRequest.jsp");
}
else if(action.equals("Leave Status"))
{
	response.sendRedirect("leaveStatus.jsp");
}
else
{
	response.sendRedirect("logout.jsp");
}

%>
</body>
</html>