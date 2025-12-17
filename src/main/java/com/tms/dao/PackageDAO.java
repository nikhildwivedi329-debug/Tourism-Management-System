package com.tms.dao;

import com.tms.model.PackageModel;
import com.tms.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PackageDAO {
	public boolean addPackage(PackageModel p) {
		String sql = "INSERT INTO packages(title,description,price,duration) VALUES(?,?,?,?)";
		try (Connection conn = DBUtil.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
			
			ps.setString(1, p.getTitle());
			ps.setString(2, p.getDescription());
			ps.setDouble(3, p.getPrice());
			ps.setString(4, p.getDuration());
			return ps.executeUpdate() > 0;
			} 
		catch (Exception e) {
				e.printStackTrace();
				}
		return false;
		}
	
	public List<PackageModel> listAll() {
		List<PackageModel> list = new ArrayList<>();
		String sql = "SELECT * FROM packages";
		
		try (Connection conn = DBUtil.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				PackageModel p = new PackageModel();
				p.setId(rs.getInt("id"));
				p.setTitle(rs.getString("title"));
				p.setDescription(rs.getString("description"));
				p.setPrice(rs.getDouble("price"));
				p.setDuration(rs.getString("duration"));
				list.add(p);
				}
			} 
		
		catch (Exception e) {
				e.printStackTrace();
				}
		return list;
		}
	}