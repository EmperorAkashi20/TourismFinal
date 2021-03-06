package com.user.register.web;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.register.bean.RegisterBean;
import com.user.register.database.RegiusterDao;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
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
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String password = request.getParameter("password");
		String rePass = request.getParameter("rePass");
		
		RegisterBean registerBean = new RegisterBean();
		registerBean.setName(name);
		registerBean.setEmail(email);
		registerBean.setContact(contact);
		registerBean.setPassword(password);
		registerBean.setRepeatPassword(rePass);
		
		RegiusterDao registerDao = new RegiusterDao();
		if(registerDao.validate(registerBean)) {
			HttpSession session = request.getSession(true);
			session.setAttribute("email", email);
			response.sendRedirect("welcomepage.jsp");		
			} else {
				response.sendRedirect("signup.jsp");
			}
	}

}
