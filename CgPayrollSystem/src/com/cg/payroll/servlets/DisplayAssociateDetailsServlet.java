package com.cg.payroll.servlets;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cg.payroll.beans.Associate;
import com.cg.payroll.exceptions.AssociateDetailsNotFoundException;
import com.cg.payroll.exceptions.PayrollServicesDownException;
import com.cg.payroll.services.PayrollServices;
import com.cg.payroll.services.PayrollServicesImpl;
@WebServlet("/DisplayAssociateDetails")
public class DisplayAssociateDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DisplayAssociateDetailsServlet() {
        super();
    }
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PayrollServices payrollServices = new PayrollServicesImpl();
		int associateId = Integer.parseInt(request.getParameter("associateID"));
		try {
			Associate associate=payrollServices.getAssociateDetails(associateId);
			request.setAttribute("associate", associate);
			RequestDispatcher dispatcher = request.getRequestDispatcher("displayAssociateDetails.jsp");
			dispatcher.forward(request, response);
			
		} catch (AssociateDetailsNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (PayrollServicesDownException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
