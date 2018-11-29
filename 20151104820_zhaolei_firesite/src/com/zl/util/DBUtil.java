package com.zl.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
	private static String url = "jdbc:mysql://localhost:3306/bishe"
			+ "?useSSL=true&characterEncoding=utf-8";
	private static String userName = "root";
	private static String password = "123456";
	static {
		//mysql jdbc driver
		try {
			com.mysql.jdbc.Driver.class.newInstance();
		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
	}

	public static com.mysql.jdbc.Connection getConnection() throws SQLException {

		Connection conn = DriverManager.getConnection(getUrl(), userName, password);
		conn.setAutoCommit(true);
		return (com.mysql.jdbc.Connection) conn;
	}

	public static int getGeneratedInt(Statement stmt) throws SQLException {
		ResultSet rs = stmt.getGeneratedKeys();
		rs.next();
		return rs.getInt(1);

	}

	public static String getUrl() {
		return url;
	}

	public static void setUrl(String url) {
		DBUtil.url = url;
	}

	public static void closeJDBC(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		// TODO Auto-generated method stub
		
	}


}
