package com.tms.dao;

import com.tms.model.Booking;
import com.tms.util.DBUtil;

import java.sql.*;

public class BookingDAO {
	public boolean createBooking(Booking b) {
		String sql = "INSERT INTO bookings(user_id, package_id, travellers) VALUES(?,?,?)";
		try (Connection conn = DBUtil.getConnection(); PreparedStatement ps = conn.prepareStatement(sql)) {
	
			ps.setInt(1, b.getUserId());
			ps.setInt(2, b.getPackageId());
			ps.setInt(3, b.getTravellers());

			return ps.executeUpdate() > 0;
			}
		
		catch (Exception e) {
				e.printStackTrace();
				}
		return false;
		
		}
	}