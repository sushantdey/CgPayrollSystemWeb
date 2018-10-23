<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
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
		<table cellpadding=5 cellspacing=5>
			<tr>
				<font><h1>Welcome to Capgemini Payroll System</h1></font>
			</tr>
			<tr>
				<td>
					<form name="acceptAssociateDetails"
						action="acceptAssociateDetails.jsp" method="post">
						<input type="submit" value="New Associate Registration" />
					</form>
				</td>
				<td>
					<form name="calculateNetSalary" action="calculateNetSalary.jsp"
						method="post">
						<input type="submit" value="Calculate Net Salary" />
					</form>
				</td>
				<td>
					<form name="getAssociateDetails" action="getAssociateDetails.jsp"
						method="post">
						<input type="submit" value="Get Associate Details" />
					</form>
				</td>
				<td>
					<form name="displayAllAssociateDetails"
						action="DisplayAllAssociateDetails" method="post">
						<input type="submit" value="Get All Associate Details" />
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>