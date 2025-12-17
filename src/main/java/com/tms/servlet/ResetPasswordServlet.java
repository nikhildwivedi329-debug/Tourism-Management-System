package com.tms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.tms.util.DBUtil;

@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("newPassword");
        String confirm = request.getParameter("confirmPassword");

        if (password == null || confirm == null) {
            response.getWriter().print("Invalid request!");
            
            return;
        
        }

        if (!password.equals(confirm)) {
            response.getWriter().print("Passwords do not match!");
            return;
        }

        try {
            Connection con = DBUtil.getConnection();
            PreparedStatement ps =
                con.prepareStatement(
                    "UPDATE users SET password=? WHERE email=?"
                );

            ps.setString(1, password);
            ps.setString(2, email);

            int updated = ps.executeUpdate();

            if (updated > 0) {
                response.sendRedirect("login.jsp");
            } else {
                response.getWriter().print("Email not found!");
            }

        } catch (Exception e) {
            e.printStackTrace();
            
            response.getWriter().print("Server error");
        
        }
    }
}
