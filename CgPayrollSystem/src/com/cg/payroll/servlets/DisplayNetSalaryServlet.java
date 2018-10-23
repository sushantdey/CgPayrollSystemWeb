package com.cg.payroll.servlets;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cg.payroll.exceptions.AssociateDetailsNotFoundException;
import com.cg.payroll.exceptions.PayrollServicesDownException;
import com.cg.payroll.services.PayrollServices;
import com.cg.payroll.services.PayrollServicesImpl;
@WebServlet("/DisplayNetSalary")
public class DisplayNetSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public DisplayNetSalaryServlet() {
		super();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PayrollServices payrollServices = new PayrollServicesImpl();
		int associateID = Integer.parseInt(request.getParameter("associateID"));
		try {
			int netSalary=payrollServices.calculateNetSalary(associateID);
			request.setAttribute("netSalary", netSalary);
			RequestDispatcher dispatcher = request.getRequestDispatcher("displayNetSalary.jsp");
			dispatcher.forward(request, response);
		} catch (AssociateDetailsNotFoundException e) {
			e.printStackTrace();
		} catch (PayrollServicesDownException e) {
			e.printStackTrace();
		}
	}
}
