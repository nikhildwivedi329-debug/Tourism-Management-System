package com.tms.servlet;


import com.tms.dao.PackageDAO;
import com.tms.model.PackageModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/addPackage")

public class AddPackageServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		double price = Double.parseDouble(req.getParameter("price"));
		String duration = req.getParameter("duration");
		
		PackageModel p = new PackageModel();
		

		p.setTitle(title);
		p.setDescription(description);
		p.setPrice(price);
		p.setDuration(duration);
		
		PackageDAO dao = new PackageDAO();
		boolean ok = dao.addPackage(p);
		
		if (ok) {
			resp.sendRedirect("adminDashboard.jsp?msg=added");
			} 
		
		else {
				resp.sendRedirect("add_package.jsp?error=fail");
				}
		}
	}