package com.tms.servlet;

import com.tms.dao.BookingDAO;
import com.tms.model.Booking;
import com.tms.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/book")

public class BookPackageServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(false);
		
		if (session == null || session.getAttribute("user") == null) {
			resp.sendRedirect("login.jsp?error=loginreq");
			return;
			}
		
		User u = (User) session.getAttribute("user");
		int packageId = Integer.parseInt(req.getParameter("packageId"));
		int travellers = Integer.parseInt(req.getParameter("travellers"));
		
		Booking b = new Booking();
		b.setUserId(u.getId());
		b.setPackageId(packageId);
		b.setTravellers(travellers);

		BookingDAO dao = new BookingDAO();
		boolean ok = dao.createBooking(b);
		if (ok) {
			resp.sendRedirect("booking_success.jsp");
			} 
		else {

			resp.sendRedirect("view_packages.jsp?error=bookingfail");

		}

	}

}