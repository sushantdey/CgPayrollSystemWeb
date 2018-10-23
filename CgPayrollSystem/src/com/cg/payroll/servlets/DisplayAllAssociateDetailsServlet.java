package com.cg.payroll.servlets;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cg.payroll.beans.Associate;
import com.cg.payroll.exceptions.PayrollServicesDownException;
import com.cg.payroll.services.PayrollServices;
import com.cg.payroll.services.PayrollServicesImpl;
@WebServlet("/DisplayAllAssociateDetails")
public class DisplayAllAssociateDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public DisplayAllAssociateDetailsServlet() {
		super();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {	
			PayrollServices payrollServices = new PayrollServicesImpl();
			ArrayList<Associate> associates=payrollServices.getAllAssociatesDetails();
			request.setAttribute("associates", associates);
			RequestDispatcher dispatcher = request.getRequestDispatcher("displayAllAssociateDetails.jsp");
			dispatcher.forward(request, response);

		} catch (PayrollServicesDownException e) {
			e.printStackTrace();
		}
	}
}
