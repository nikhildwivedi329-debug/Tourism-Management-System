package com.tms.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	private static final String URL = "jdbc:mysql://localhost:33601/tourism_db";
	private static final String USER = "root";
	private static final String PASS = "root";
	static {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		} 
	catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
	}

	public static Connection getConnection() throws Exception {
		
		return DriverManager.getConnection(URL, USER, PASS);
		}
	}
