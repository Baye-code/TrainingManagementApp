package com.saraya.login;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saraya.service.FormationService;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {
	
	UserValidation validation = new UserValidation();
	FormationService fs = new FormationService();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String userName = request.getParameter("name");
		String password = request.getParameter("pwd");
		
		boolean valid = validation.isValid(userName, password);
		if(valid) {
			request.getSession().setAttribute("name", userName);
			//request.getSession().setAttribute("password", password);
			response.sendRedirect("/formation.do");
		}else {
			request.setAttribute("errorMessage", "Sorry Wrong Credential");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);	
		}
	}

}