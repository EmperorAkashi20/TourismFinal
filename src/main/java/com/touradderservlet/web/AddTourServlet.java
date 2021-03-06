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
		String publishDate = request.getParameter("publishDate");
		String shortDesc = request.getParameter("shortdesc");
		
		Part file = request.getPart("image");
		Part file1 = request.getPart("imageforsone");	
		Part file2 = request.getPart("imageforstwo");
		Part file3 = request.getPart("imageforsthree");
		
		String imageFileName = file.getSubmittedFileName();
		String imageFileName1 = file1.getSubmittedFileName();
		String imageFileName2 = file2.getSubmittedFileName();
		String imageFileName3 = file3.getSubmittedFileName();
		
		String uploadPath = "/Users/rishabh/Desktop/WebApp/src/main/webapp/images/"+imageFileName;
		String uploadPath1 = "/Users/rishabh/Desktop/WebApp/src/main/webapp/images/"+imageFileName1;
		String uploadPath2 = "/Users/rishabh/Desktop/WebApp/src/main/webapp/images/"+imageFileName2;
		String uploadPath3 = "/Users/rishabh/Desktop/WebApp/src/main/webapp/images/"+imageFileName3;
		//System.out.print(uploadPath);
		String imagePathDisplay = "images/"+imageFileName;
		String imagePathDisplay1 = "images/"+imageFileName1;
		String imagePathDisplay2 = "images/"+imageFileName2;
		String imagePathDisplay3 = "images/"+imageFileName3;
		
		try {
		
		FileOutputStream fos = new FileOutputStream(uploadPath);
		FileOutputStream fos1 = new FileOutputStream(uploadPath1);
		FileOutputStream fos2 = new FileOutputStream(uploadPath2);
		FileOutputStream fos3 = new FileOutputStream(uploadPath3);
		
		InputStream is = file.getInputStream();
		InputStream is1 = file.getInputStream();
		InputStream is2 = file.getInputStream();
		InputStream is3 = file.getInputStream();
		
		byte[] data = new byte[is.available()];
		byte[] data1 = new byte[is1.available()];
		byte[] data2 = new byte[is2.available()];
		byte[] data3 = new byte[is3.available()];
		
		is.read(data);
		is1.read(data1);
		is2.read(data2);
		is3.read(data3);
		
		fos.write(data);
		fos1.write(data1);
		fos2.write(data2);
		fos3.write(data3);
		
		fos.close();
		fos1.close();
		fos2.close();
		fos3.close();
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
		tourAdderBean.setImagePath(imagePathDisplay);
		tourAdderBean.setPublishDate(publishDate);
		tourAdderBean.setShortdesc(shortDesc);
		tourAdderBean.setImage1fors(imagePathDisplay1);
		tourAdderBean.setImage2fors(imagePathDisplay2);
		tourAdderBean.setImage3fors(imagePathDisplay3);
		
		TourAdderDao tourAdderDao = new TourAdderDao();
		if(tourAdderDao.validate(tourAdderBean)) {
			response.sendRedirect("touradder.jsp");
		} else {
			response.sendRedirect("adminlogin.jsp");
		}
	}

}
