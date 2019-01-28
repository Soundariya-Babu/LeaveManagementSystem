<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ManagerProcess</title>
</head>
<body>
<%String action=request.getParameter("action");
if(action.equals("Leave Approval"))
{
	response.sendRedirect("approvalLeave.jsp");
}
else if(action.equals("List Employee"))
{
	response.sendRedirect("list.jsp");
}

%>
</body>
</html>