<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.cg.payroll.beans.Associate" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Net Salary</title>
<style type="text/css">
h1 {
	color: red;
}

body {
	background-color: skyblue;
}
</style>
</head>
<body>
	<%-- <%
		HttpSession session = request.getSession(false);
		if (session == null)
			response.sendRedirect("indexPage.jsp");
	%> --%>
	<div align="center">
		<h1>
			Salary details for Associate
			<%-- ${requestScope.associate.associateID} --%>
		</h1>
		<table>
			<tr>
				<th>Net Salary:</th>
				<th>${requestScope.netSalary}</th>
			</tr>
		</table>
	</div>
	<div align="center">
		<a href="indexPage.jsp">Return to home page</a>
	</div>
</body>
</html>