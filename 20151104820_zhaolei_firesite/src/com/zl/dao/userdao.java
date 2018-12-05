package com.zl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.zl.bean.user;
import com.zl.util.DBUtil;

public class userdao {
		
		//登录  
		//try  catch  finally  表示异常处理
		//try中包含可能出现异常的语句
		//catch 表示异常处理
		//finally  包含必须执行的语句
		public user login(user userbean){
			//实例化Connection对象conn，连接数据库
			Connection conn = DBUtil.getConnection();
			//实例化PreparedStatement对象pstmt，用于传递sql语句
			PreparedStatement pstmt = null;
			//实例化ResultSet对象rs，用于返回结果
			ResultSet rs = null;
			//实例化UserBean对象userbrean，用于返回结果
			user userbrean = null;
			
			//sql语句   ？代表占位符
			String sql = "select * from user where username=? and userpassword=?";
			
			try {
				//运行sql语句
				pstmt = conn.prepareStatement(sql);
				//第一个问号的值
				pstmt.setString(1, userbean.getUsername());
				//第二个问号的值
				pstmt.setString(2, userbean.getUserpassword());
				//返回结果集
				rs = pstmt.executeQuery();
				
				while(rs.next())//遍历结果集
				{
					//将结果返回到userbrean，用于最后的return返回到login。
					userbrean = new user();
					userbrean.setUsername(rs.getString("username"));
					userbrean.setUserpassword(rs.getString("userpassword"));
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				//关闭
				DBUtil.closeJDBC(rs, pstmt, conn);
			}
			
			return userbrean;
		}
		//注册中查询用户名是否一样
		public boolean userregsiter(String username){
			Connection conn = DBUtil.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
		
			String sql = "select * from user where username=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, username);
				rs = pstmt.executeQuery();
				
				while(rs.next())
				{
					//用户名重复
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DBUtil.closeJDBC(rs, pstmt, conn);
			}
			//用户名没重复
			return false;
		}
			//注册
		public void save(String username, String userpassword, String sex, String phone){
			Connection conn = DBUtil.getConnection();
			PreparedStatement pstmt = null;
			
			String sql = "insert into user (username,userpassword,sex,phone)" +
						"values(?,?,?,?)";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, username);
				pstmt.setString(2, userpassword);
				pstmt.setString(3, sex);
				pstmt.setString(3, phone);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DBUtil.closeJDBC(null, pstmt, conn);
			}
			
		}

}
