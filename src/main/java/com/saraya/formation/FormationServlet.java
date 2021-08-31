package com.saraya.formation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saraya.model.Formation;
import com.saraya.service.FormationService;

@WebServlet(urlPatterns = "/formation.do")
public class FormationServlet extends HttpServlet {
	FormationService fs = new FormationService();
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String userName = request.getParameter("name");	
		request.setAttribute("name", userName);
		request.setAttribute("formats", fs.getAllFormation() );
		request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		String addF = request.getParameter("add");
	   fs.addFormation(new Formation(addF));
	   response.sendRedirect("/formation.do");

	}

}