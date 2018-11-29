package com.zl.service;

import java.sql.SQLException;
import java.util.List;

import com.zl.bean.user;
import com.zl.dao.userdao;

public class loginservice {

	
	public boolean getUserInfo(user userInfo) throws SQLException{
		
		boolean flag = false;
		userdao useInfoDao = new userdao();
		
		List<user> userInfoList  = useInfoDao.getUserInfo(userInfo);
		
		if(userInfoList!=null && userInfoList.size()==1){
			
			flag = true;
		}
		
		return flag;
	}
	
	//Service中查询所有的用户信息 
	public List<user>  getUserInfoList(user userInfo) throws SQLException{
		

		userdao useInfoDao = new userdao();
		
		List<user> userInfoList  = useInfoDao.getUserInfo(userInfo);
		
	
		return userInfoList;
	}
	
	public boolean checkUserName(String username) throws SQLException{
		user userInfo = new user();
		userInfo.setUsername(username);
		boolean flag = false;
		userdao useInfodao = new userdao();
		List<user> userInfoList = useInfodao.getUserInfo(userInfo);
		if(userInfoList != null && userInfoList.size() ==1) {
			flag = true;
		}
		return flag;
	}
	
}
