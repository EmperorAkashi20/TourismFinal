package com.modifypackage.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.modifypackage.bean.ModifyPackageBean;
import com.modifypackage.database.ModifyPackageDao;

/**
 * Servlet implementation class ModifyPackageServlet
 */
@WebServlet("/modify")
public class ModifyPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyPackageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String packageid = request.getParameter("packageid");
		String amount = request.getParameter("amount");
		String numberofdays = request.getParameter("numberofdays");
		String numberofhotels = request.getParameter("numberofhotels");
		String title = request.getParameter("title");
		
		ModifyPackageBean modify = new ModifyPackageBean();
		
		modify.setPackageid(packageid);
		modify.setAmount(amount);
		modify.setNumberofhotels(numberofhotels);
		modify.setNumberofdays(numberofdays);
		modify.setTitle(title);
		
		ModifyPackageDao modifydao = new ModifyPackageDao();
		if(modifydao.modifypackage(modify)) {
			response.sendRedirect("touradder.jsp");
		} else {
			response.sendRedirect("adminlogin.jsp");
		}
	}

}
