package com.touradderservlet.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.touradder.bean.TourAdderBean;
import com.touradder.database.TourAdderDao;

/**
 * Servlet implementation class AddTourServlet
 */
@MultipartConfig
@WebServlet("/addtour")
public class AddTourServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTourServlet() {
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
		String packageId = request.getParameter("packageid");
		String destination = request.getParameter("destination");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String numberOfDays = request.getParameter("numberofdays");
		String numberOfHotels = request.getParameter("numberofhotels");
		String imagePath = request.getParameter("imagePath");
		String publishDate = request.getParameter("publishDate");
		Part file = request.getPart("image");
		
		String imageFileName = file.getSubmittedFileName();
		System.out.println(imageFileName);
		
		String uploadPath = "/Users/rishabh/Desktop/WebApp/assets/"+imageFileName;
		//System.out.print(uploadPath);
		
		try {
		
		FileOutputStream fos = new FileOutputStream(uploadPath);
		InputStream is = file.getInputStream();
		
		byte[] data = new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		TourAdderBean tourAdderBean = new TourAdderBean();
		tourAdderBean.setPackageid(packageId);
		tourAdderBean.setDestination(destination);
		tourAdderBean.setPrice(price);
		tourAdderBean.setDescription(description);
		tourAdderBean.setNumberOfDays(numberOfDays);
		tourAdderBean.setNumberOfHotels(numberOfHotels);
		tourAdderBean.setImagePath(imageFileName);
		tourAdderBean.setPublishDate(publishDate);
		
		
		
		
		TourAdderDao tourAdderDao = new TourAdderDao();
		if(tourAdderDao.validate(tourAdderBean)) {
			response.sendRedirect("loginsuccess.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	}

}
