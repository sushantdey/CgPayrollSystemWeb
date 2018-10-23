<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Associate Details</title>
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
		<h1>Associate Details Form</h1>
		<form name="associateDetailsForm" action="AcceptAssociateDetails"
			method="post">
			<table cellpadding=5 cellspacing=5>
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstName"></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName"></td>
				</tr>
				<tr>
					<td>Email Id</td>
					<td><input type="email" name="emailId"></td>
				</tr>
				<tr>
					<td>Department</td>
					<td><input type="text" name="department"></td>
				</tr>
				<tr>
					<td>Designation</td>
					<td><input type="text" name="designation"></td>
				</tr>
				<tr>
					<td>Yearly Investment Under 80C</td>
					<td><input type="text" name="yearlyInvestmentUnder80C"></td>
				</tr>
				<tr>
					<td>Pan Card</td>
					<td><input type="text" name="pancard"></td>
				</tr>
				<tr>
					<td>Account Number</td>
					<td><input type="number" name="accountNumber"></td>
				</tr>
				<tr>
					<td>Bank Name</td>
					<td><input type="text" name="bankName"></td>
				</tr>
				<tr>
					<td>IFSC Code</td>
					<td><input type="text" name="ifscCode"></td>
				</tr>
				<tr>
				<tr>
					<td>Basic Salary</td>
					<td><input type="text" name="basicSalary"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /> <input type="reset"
						value="Reset" /></td>
				</tr>
			</table>
		</form>
	</div>
	<div align="center">
		<a href="indexPage.jsp">Return to home page</a>
	</div>
</body>
</html>