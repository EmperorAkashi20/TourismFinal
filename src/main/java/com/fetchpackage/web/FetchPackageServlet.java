package com.fetchpackage.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fetchpackage.bean.FetchPackageBean;
import com.fetchpackage.database.FetchPackageDao;


/**
 * Servlet implementation class FetchPackageServlet
 */
@WebServlet("/fetchpackage")
public class FetchPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchPackageServlet() {
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
		String destination = request.getParameter("destination");
		String amount = request.getParameter("amount");
		String description = request.getParameter("description");
		String numberofdays= request.getParameter("numberofdays");
		String image = request.getParameter("image");
		String publishdate = request.getParameter("publishdate ");
		String shortdesc = request.getParameter("shortdesc");
		String numberofhotels = request.getParameter("numberofhotels");
		String imageforsone = request.getParameter("imageforsone");
		String imageforstwo= request.getParameter("imageforstwo");
		String imageforsthree= request.getParameter("imageforsthree");
		
		FetchPackageBean fetchPackage = new FetchPackageBean();
		fetchPackage.setPackageid(packageid);
		fetchPackage.setTitle(destination);
		fetchPackage.setAmount(amount);
		fetchPackage.setDescription(description);
		fetchPackage.setNumberofdays(numberofdays);
		fetchPackage.setImage(image);
		fetchPackage.setPublishdate(publishdate);
		fetchPackage.setShortdesc(shortdesc);
		fetchPackage.setNumberofhotels(numberofhotels);
		fetchPackage.setImageforsone(imageforsone);
		fetchPackage.setImageforstwo(imageforstwo);
		fetchPackage.setImageforsthree(imageforsthree);
		
		FetchPackageDao fetchPackageDao = new FetchPackageDao();
		if(fetchPackageDao.validate(fetchPackage)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("packageid", packageid);
			session.setAttribute("amount", amount);
			session.setAttribute("destination", destination);
			session.setAttribute("description", description);
			session.setAttribute("numberofdays", numberofdays);
			session.setAttribute("image", image);
			session.setAttribute("publishdate", publishdate);
			session.setAttribute("shortdesc", shortdesc);
			session.setAttribute("numberofhotels", numberofhotels);
			session.setAttribute("imageforsone", imageforsone);
			session.setAttribute("imageforstwo", imageforstwo);
			session.setAttribute("imageforsthree", imageforsthree);
			response.sendRedirect("booking.jsp");
		} else {
			response.sendRedirect("homeafterlogin.jsp");
		}
	}

}
