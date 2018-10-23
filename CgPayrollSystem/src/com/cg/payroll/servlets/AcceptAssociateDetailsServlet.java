package com.cg.payroll.servlets;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cg.payroll.beans.Associate;
import com.cg.payroll.beans.BankDetails;
import com.cg.payroll.beans.Salary;
import com.cg.payroll.services.PayrollServices;
import com.cg.payroll.services.PayrollServicesImpl;
@WebServlet("/AcceptAssociateDetails")
public class AcceptAssociateDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// doPost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String emailId=request.getParameter("emailId");
		String department=request.getParameter("department");
		String designation=request.getParameter("designation");
		int yearlyInvestmentUnder80C=Integer.parseInt(request.getParameter("yearlyInvestmentUnder80C"));
		String pancard=request.getParameter("pancard");
		int accountNumber=Integer.parseInt(request.getParameter("accountNumber"));
		String bankName=request.getParameter("bankName");
		String ifscCode=request.getParameter("ifscCode");
		int basicSalary=Integer.parseInt(request.getParameter("basicSalary"));
		Associate associate = new Associate(yearlyInvestmentUnder80C, firstName, lastName, department, designation, pancard, emailId, new BankDetails(accountNumber, bankName, ifscCode), new Salary(basicSalary, 0, 0));
		/*HttpSession session=request.getSession();
		session.setAttribute("associate", associate);
		RequestDispatcher dispatcher = request.getRequestDispatcher("acceptBankDetails.jsp");*/
		PayrollServices payrollServices = new PayrollServicesImpl();
		associate=payrollServices.acceptAssociateDetails(associate);
		request.setAttribute("associate", associate);
		RequestDispatcher dispatcher = request.getRequestDispatcher("displayAssociateId.jsp");
		dispatcher.forward(request, response);
	}
}