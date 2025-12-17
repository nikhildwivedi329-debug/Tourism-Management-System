package com.tms.servlet;

import com.tms.dao.UserDAO;
import com.tms.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		UserDAO dao = new UserDAO();
		User u = dao.findByEmailAndPassword(email, password);
		
		if (u != null) {
			HttpSession session = req.getSession();
			session.setAttribute("user", u);

			if ("admin".equalsIgnoreCase(u.getRole())) {
				resp.sendRedirect("adminDashboard.jsp");
				} 
			else {
					
				resp.sendRedirect("view_packages.jsp");
					
			}
			
		} 
		
		else {
			resp.sendRedirect("login.jsp?error=invalid");
			
		}
		
	}
	
}