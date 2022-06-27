package com.kh.common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class JDBCTemplate {
	
	public static Connection getConnection() {
		
		Connection conn = null;
		// 동적 코딩방식을 적용하기 위해 Properties 객체 생성
		Properties prop = new Properties();
		String filename = JDBCTemplate.class.getResource("/sql/driver/driver.properties").getPath();
		
		try {
			
			// prop 객체에서 load 메소드를 이용해 각각의 키값에서 값을 가져오겠다.
			prop.load(new FileInputStream(filename));
			Class.forName(prop.getProperty("driver"));
			conn = DriverManager.getConnection(prop.getProperty("url")
												, prop.getProperty("username")
												, prop.getProperty("password"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void commit(Connection conn) {
		try {
			if (conn != null && !conn.isClosed()) {
				
				conn.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			if (conn != null && !conn.isClosed()) {
				
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn) {
		try {
			if (conn != null && !conn.isClosed()) {
				
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(PreparedStatement pstmt) {
		try {
			if (pstmt != null && !pstmt.isClosed()) {
				
				pstmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			if (rset != null && !rset.isClosed()) {
				
				rset.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
