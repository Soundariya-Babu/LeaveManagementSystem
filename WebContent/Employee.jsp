<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="AuthenticateEmployee.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<body>
<form action="process4.jsp" method=get>
<h1>Select any one option</h1>
<br><input type="submit" name="action" value="Leave Request"><br>

<br><input type="submit" value="Leave Status" name="action"><br>
<br><input type="submit" value="Logout" name="action"><br>

</form>

</body>
</html>