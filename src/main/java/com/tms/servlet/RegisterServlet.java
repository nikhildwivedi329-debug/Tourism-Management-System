package com.tms.servlet;

import com.tms.dao.UserDAO;
import com.tms.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



import java.io.IOException;

@WebServlet("/RegisterServlet")

public class RegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String name = req.getParameter("name");
	String email = req.getParameter("email");
	String password = req.getParameter("password");
	
	User u = new User();
	u.setName(name);
	u.setEmail(email);
	u.setPassword(password);
	
	u.setRole("user");
	
	UserDAO dao = new UserDAO();
	boolean ok = dao.save(u);
	
	if (ok) {
		resp.sendRedirect("login.jsp?msg=registered");
		} 
	else {
			
		resp.sendRedirect("register.jsp?error=unable");
			
	}
	
	}
	
}