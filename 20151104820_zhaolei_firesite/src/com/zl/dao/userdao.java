package com.zl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.zl.bean.user;
import com.zl.util.DBUtil;

public class userdao {
		
		//��¼  
		//try  catch  finally  ��ʾ�쳣����
		//try�а������ܳ����쳣�����
		//catch ��ʾ�쳣����
		//finally  ��������ִ�е����
		public user login(user userbean){
			//ʵ����Connection����conn���������ݿ�
			Connection conn = DBUtil.getConnection();
			//ʵ����PreparedStatement����pstmt�����ڴ���sql���
			PreparedStatement pstmt = null;
			//ʵ����ResultSet����rs�����ڷ��ؽ��
			ResultSet rs = null;
			//ʵ����UserBean����userbrean�����ڷ��ؽ��
			user userbrean = null;
			
			//sql���   ������ռλ��
			String sql = "select * from user where username=? and userpassword=?";
			
			try {
				//����sql���
				pstmt = conn.prepareStatement(sql);
				//��һ���ʺŵ�ֵ
				pstmt.setString(1, userbean.getUsername());
				//�ڶ����ʺŵ�ֵ
				pstmt.setString(2, userbean.getUserpassword());
				//���ؽ����
				rs = pstmt.executeQuery();
				
				while(rs.next())//���������
				{
					//��������ص�userbrean����������return���ص�login��
					userbrean = new user();
					userbrean.setUsername(rs.getString("username"));
					userbrean.setUserpassword(rs.getString("userpassword"));
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				//�ر�
				DBUtil.closeJDBC(rs, pstmt, conn);
			}
			
			return userbrean;
		}
		//ע���в�ѯ�û����Ƿ�һ��
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
					//�û����ظ�
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				DBUtil.closeJDBC(rs, pstmt, conn);
			}
			//�û���û�ظ�
			return false;
		}
			//ע��
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
