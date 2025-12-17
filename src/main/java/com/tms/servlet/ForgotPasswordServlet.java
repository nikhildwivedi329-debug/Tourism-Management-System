package com.tms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.tms.util.DBUtil;

@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");

        try {
            Connection con = DBUtil.getConnection();
            PreparedStatement ps =
                    con.prepareStatement("SELECT * FROM users WHERE email=?");

            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                response.sendRedirect("reset-password.jsp?email=" + email);
            } else {
                response.getWriter().println("Email not registered");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Server error");
        }
    }
}
