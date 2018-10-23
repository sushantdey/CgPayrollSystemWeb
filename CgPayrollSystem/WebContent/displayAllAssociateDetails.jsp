<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.cg.payroll.beans.Associate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Associate Details</title>
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
		<h1>All Associate details</h1>
		<table border=1px>
			<tr>
				<th colspan=7>Associate Details</th>
				<th colspan=3>Bank Details</th>
				<th colspan=11>Salary Details</th>
			</tr>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email Id</th>
				<th>Department</th>
				<th>Designation</th>
				<th>Yearly Investment Under 80C</th>
				<th>Pan Card</th>
				<th>Account Number</th>
				<th>Bank Name</th>
				<th>IFSC Code</th>
				<th>Basic Salary</th>
				<th>Company PF</th>
				<th>EPF</th>
				<th>Conveyence Allowance</th>
				<th>Gratuity</th>
				<th>HRA</th>
				<th>Other Allowance</th>
				<th>Personal Allowance</th>
				<th>Gross Salary</th>
				<th>Monthly Tax</th>
				<th>Net Salary</th>
			</tr>
			<c:forEach var="associate" items="${requestScope.associates}">
				<tr>
					<td><c:out value="${associate.firstName}" /></td>
					<td><c:out value="${associate.lastName}" /></td>
					<td><c:out value="${associate.emailId}" /></td>
					<td><c:out value="${associate.department}" /></td>
					<td><c:out value="${associate.designation}" /></td>
					<td><c:out value="${associate.yearlyInvestmentUnder80C}" /></td>
					<td><c:out value="${associate.pancard}" /></td>
					<td><c:out value="${associate.bankDetails.accountNumber}" /></td>
					<td><c:out value="${associate.bankDetails.bankName}" /></td>
					<td><c:out value="${associate.bankDetails.ifscCode}" /></td>
					<td><c:out value="${associate.salary.basicSalary}" /></td>
					<td><c:out value="${associate.salary.companyPf}" /></td>
					<td><c:out value="${associate.salary.conveyenceAllowance}" /></td>
					<td><c:out value="${associate.salary.epf}" /></td>
					<td><c:out value="${associate.salary.gratuity}" /></td>
					<td><c:out value="${associate.salary.hra}" /></td>
					<td><c:out value="${associate.salary.otherAllowance}" /></td>
					<td><c:out value="${associate.salary.otherAllowance}" /></td>
					<td><c:out value="${associate.salary.grossSalary}" /></td>
					<td><c:out value="${associate.salary.monthlyTax}" /></td>
					<td><c:out value="${associate.salary.netSalary}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div align="center">
		<a href="indexPage.jsp">Return to home page</a>
	</div>
</body>
</html>