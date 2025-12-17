package com.tms.servlet;

import com.tms.dao.PackageDAO;
import com.tms.model.PackageModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/listPackages")

public class ListPackagesServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PackageDAO dao = new PackageDAO();
		List<PackageModel> list = dao.listAll();
		
		req.setAttribute("packages", list);
		req.getRequestDispatcher("view_packages.jsp").forward(req, resp);
		
	}
	
}