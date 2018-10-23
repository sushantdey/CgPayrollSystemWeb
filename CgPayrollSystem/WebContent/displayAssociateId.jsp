<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.cg.payroll.beans.Associate" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		HttpSession session=request.getSession(false);
		if(session==null)
			response.sendRedirect("indexPage.jsp");
	%> --%>
	<div align="center">
		<table>
			<tr>
				<th><h1>Welcome</h1></th>
				<th><h1>${requestScope.associate.firstName}</h1></th>
			</tr>
			<tr>
				<th>Associate ID:</th>
				<th>${requestScope.associate.associateID}</th>
			</tr>
		</table>
	</div>
	<div align="center">
		<a href="indexPage.jsp">Return to home page</a>
	</div>
</body>
</html>