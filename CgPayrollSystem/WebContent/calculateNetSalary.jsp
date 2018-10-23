<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<div align="center">
		<form name="displayNetSalary" action="DisplayNetSalary" method="post">
			<table>
				<tr>
					<td>Enter Associate Id</td>
					<td><input type="text" name="associateID" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="Submit" /></td>
				</tr>
			</table>
		</form>
	</div>
	<div align="center">
		<a href="indexPage.jsp">Return to home page</a>
	</div>
</body>
</html>