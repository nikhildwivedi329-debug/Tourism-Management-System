package com.tms.dao;

import com.tms.model.User;
import com.tms.util.DBUtil;

import java.sql.*;

public class UserDAO {
	
	public boolean save(User u) {
		String sql = "INSERT INTO users(name,email,password,role) VALUES(?,?,?,?)";
		try (Connection conn = DBUtil.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getRole() == null ? "user" : u.getRole());
			return ps.executeUpdate() > 0;
			} 
		
		catch (Exception e) {
				e.printStackTrace();
				return false;
				}
		}
	
	public User findByEmailAndPassword(String email, String password) {
		
		String sql = "SELECT * FROM users WHERE email=? AND password=?";

		try (Connection conn = DBUtil.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				User u = new User();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setEmail(rs.getString("email"));
				u.setPassword(rs.getString("password"));
				u.setRole(rs.getString("role"));
				
				return u;
				}
			} 

		catch (Exception e) {
			e.printStackTrace();
			}
		return null;
		}
	}