package com.zl.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
	//���ݿ�mysql
	static String name = "root";//�û���
	static String password = "123456";//����
	static String url = "jdbc:mysql://localhost:3306/bishe";
	static {
		try{
			//����������
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	//�������ݿ�����
	public static Connection getConnection() {
		Connection conn = null;
		try{
			conn = DriverManager.getConnection(url, name, password);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return conn;
	}
	//�ر� rs��pstmt��conn
	public static void closeJDBC(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		if(rs !=null){
			try{
				rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
		if(pstmt !=null){
			try{
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(conn != null)
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
