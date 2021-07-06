package com.addtocart.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.addtocart.bean.AddToCartBean;
import com.addtocart.database.AddToCartDao;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/addtocart")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServlet() {
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
		String userId = request.getParameter("userid");
		String packageId = request.getParameter("packageid");
		String numberOfPeople = request.getParameter("numberofpeople");
		String fromDate = request.getParameter("fromdate");
		String toDate = request.getParameter("todate");
		String transport = request.getParameter("transport");
		String bookingId = request.getParameter("bookingid");
		String totalDays = request.getParameter("totaldays");
		String price = request.getParameter("price");
		String roomType = request.getParameter("roomtype");
		String destination = request.getParameter("destination");
		String passportNumber = request.getParameter("passport");
		
		AddToCartBean addToCart = new AddToCartBean();
		addToCart.setUserId(userId);
		addToCart.setPackageId(packageId);
		addToCart.setNumberOfPeople(numberOfPeople);
		addToCart.setFromdate(fromDate);
		addToCart.setToDate(toDate);
		addToCart.setTransport(transport);
		addToCart.setBookingId(bookingId);
		addToCart.setTotalDays(totalDays);
		addToCart.setPrice(price);
		addToCart.setDestination(destination);
		addToCart.setRoomtype(roomType);
		addToCart.setPassportNumber(passportNumber);
		
		AddToCartDao addToCartDao = new AddToCartDao();
		if(addToCartDao.validate(addToCart)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("packageid", packageId);
			session.setAttribute("destination", destination);
			session.setAttribute("price", price);
			response.sendRedirect("booking.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}

}
