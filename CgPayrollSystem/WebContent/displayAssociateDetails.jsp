<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.cg.payroll.beans.Associate" session="false"%>
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
	<%-- <%
		HttpSession session = request.getSession(false);
		if (session == null)
			response.sendRedirect("indexPage.jsp");
	%> --%>
	<div align="center">
		<h1>Associate details for Associate ID:
			${requestScope.associate.associateID}</h1>
		<table border=1>
			<tr>
				<th colspan=2>Associate Details</th>
			</tr>
			<tr>
				<td>Name</td>
				<td>${requestScope.associate.firstName}
					${requestScope.associate.lastName}</td>
			</tr>
			<tr>
				<td>Email Id</td>
				<td>${requestScope.associate.emailId}</td>
			</tr>
			<tr>
				<td>Department</td>
				<td>${requestScope.associate.department}</td>
			</tr>
			<tr>
				<td>Designation</td>
				<td>${requestScope.associate.designation}</td>
			</tr>
			<tr>
				<td>Yearly Investment Under 80C</td>
				<td>${requestScope.associate.yearlyInvestmentUnder80C}</td>
			</tr>
			<tr>
				<td>Pan Card</td>
				<td>${requestScope.associate.pancard}</td>
			</tr>
			<tr>
				<th colspan=2>Bank Details</th>
			</tr>
			<tr>
			<tr>
				<td>Account Number</td>
				<td>${requestScope.associate.bankDetails.accountNumber}</td>
			</tr>
			<tr>
				<td>Bank Name</td>
				<td>${requestScope.associate.bankDetails.bankName}</td>
			</tr>
			<tr>
				<td>IFSC Code</td>
				<td>${requestScope.associate.bankDetails.ifscCode}</td>
			</tr>
			<tr>
				<th colspan=2>Salary Details</th>
			</tr>
			<tr>
			<tr>
				<td>Basic Salary</td>
				<td>${requestScope.associate.salary.basicSalary}</td>
			</tr>
			<tr>
				<td>Company PF</td>
				<td>${requestScope.associate.salary.companyPf}</td>
			</tr>
			<tr>
				<td>Conveyence Allowance</td>
				<td>${requestScope.associate.salary.conveyenceAllowance}</td>
			</tr>
			<tr>
				<td>EPF</td>
				<td>${requestScope.associate.salary.epf}</td>
			</tr>
			<tr>
				<td>Gratuity</td>
				<td>${requestScope.associate.salary.gratuity}</td>
			</tr>
			<tr>
				<td>HRA</td>
				<td>${requestScope.associate.salary.hra}</td>
			</tr>
			<tr>
				<td>Other Allowance</td>
				<td>${requestScope.associate.salary.otherAllowance}</td>
			</tr>
			<tr>
				<td>Personal Allowance</td>
				<td>${requestScope.associate.salary.otherAllowance}</td>
			</tr>
			<tr>
				<td>Gross Salary</td>
				<td>${requestScope.associate.salary.grossSalary}</td>
			</tr>
			<tr>
				<td>Monthly Tax</td>
				<td>${requestScope.associate.salary.monthlyTax}</td>
			</tr>
			<tr>
				<td>Net Salary</td>
				<td>${requestScope.associate.salary.netSalary}</td>
			</tr>
		</table>
	</div>
	<div align="center">
		<a href="indexPage.jsp">Return to home page</a>
	</div>
</body>
</html>