package com.transact.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.transact.bean.TrasactionBean;
import com.transact.database.TransactionDao;
import com.user.register.bean.LoginBean;

/**
 * Servlet implementation class TransactionServlet
 */
@WebServlet("/transaction")
public class TransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionServlet() {
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
		String userid = request.getParameter("userid");
		String cardnumber = request.getParameter("cardnumber");
		String amountpaid = request.getParameter("amountpaid");
		String destination = request.getParameter("destination");
		String passportn = request.getParameter("passportnumber");
		String traveldate = request.getParameter("traveldate");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String expm = request.getParameter("expm");
		String expy = request.getParameter("expy");
		String cvv = request.getParameter("cvv");
		
		
		
		TrasactionBean transactionbean = new TrasactionBean();
		LoginBean loginbean = new LoginBean();
		
		transactionbean.setUserId(userid);
		transactionbean.setCardnumber(cardnumber);
		transactionbean.setAmountpaid(amountpaid);
		transactionbean.setDestination(destination);
		transactionbean.setPassportnumber(passportn);
		transactionbean.setTravelDate(traveldate);
		loginbean.setName(name);
		loginbean.setAddress(address);
		loginbean.setCity(city);
		loginbean.setCnum(cardnumber);
		loginbean.setExpm(expm);
		loginbean.setExpy(expy);
		loginbean.setCvv(cvv);
		loginbean.setZip(zip);
		loginbean.setEmail(email);
		loginbean.setState(state);
		loginbean.setUserId(userid);
		
		
		
		TransactionDao transactionDao = new TransactionDao();
		if(transactionDao.validate(transactionbean)) {
			if(transactionDao.billingaddress(loginbean)) {
				HttpSession session = request.getSession(true);
				response.sendRedirect("loginsuccess.jsp");		
				} else {
					response.sendRedirect("payment.jsp");
				}
			} else {
				response.sendRedirect("payment.jsp");
			}
		
	}

}
