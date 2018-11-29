package com.zl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.zl.bean.user;
import com.zl.util.DBUtil;

public class userdao {

	public List<user> getUserInfo(user userInfo) throws SQLException {
		  Connection connection =  DBUtil.getConnection();
		//statement  callableStatement
		  StringBuffer sb = new StringBuffer();
		  sb.append(" Select * from bishe where 1=1 ");
		  if(userInfo.getUsername()!=null &&!"".equals(userInfo.getUsername())){
			  sb.append(" and user_name='"+ userInfo.getUsername() +"'") ;
		  }
		  
		  if(userInfo.getUserpassword()!=null &&!"".equals(userInfo.getUserpassword())){
			  
			  sb.append(" and user_pass='"+ userInfo.getUserpassword() +"'") ;
		  }
		  
		  if(userInfo.getSex()!=null &&!"".equals(userInfo.getSex())){
			  
			  sb.append(" and user_sex='"+ userInfo.getSex() +"'") ;
		  }
		  
		  if(userInfo.getPhone()!=null &&!"".equals(userInfo.getPhone())){
			  
			  sb.append(" and phone='"+ userInfo.getPhone() +"'") ;
		  }
		
		  PreparedStatement  statement = connection.prepareStatement(sb.toString());

		  ResultSet result = statement.executeQuery();

		  List<user> userInfoList = new  ArrayList<user>();

		  while(result.next()) {
			  user userInfoTemp = new user();
			  userInfoTemp.setId(result.getInt("id"));	
			  userInfoTemp.setUsername(result.getString("username"));	
			  userInfoTemp.setUserpassword(result.getString("userpassword"));
			  userInfoTemp.setSex(result.getString("sex")); 
			  userInfoTemp.setPhone(result.getString("phone"));
			  userInfoList.add(userInfoTemp);
    	 }

		  return userInfoList;

	}

}
