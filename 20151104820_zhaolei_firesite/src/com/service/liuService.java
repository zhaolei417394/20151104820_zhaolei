package com.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.DB;
import com.orm.Tgonggao;
import com.orm.Tinfo;
import com.orm.Tlianjie;


public class liuService
{
	
	public static String panduan_zhanghao(String userName)
	{
		String s="meizhan";
		
		String sql="select * from t_user where userDel='no' and userName=?";
		Object[] params={userName.trim()};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				s="yizhan";
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return s;
	}
	
	
	
	public static List get_gonggao_qian()
	{
		List gonggaoList=new ArrayList();
		String sql="select * from t_gonggao order by id desc";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tgonggao gonggao=new Tgonggao();
				
				gonggao.setId(rs.getString("id"));
				gonggao.setTitle(rs.getString("title"));
				gonggao.setContent(rs.getString("content"));
				gonggao.setShijian(rs.getString("shijian"));
				
				gonggaoList.add(gonggao);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		if(gonggaoList.size()>3)
		{
			gonggaoList=gonggaoList.subList(0, 3);
		}
		return gonggaoList;
	}
	
	
	public static List lianjieList()
	{
		List lianjieList=new ArrayList();
		String sql="select * from t_lianjie";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				Tlianjie lianjie=new Tlianjie();
				lianjie.setId(rs.getInt("id"));
				lianjie.setMingcheng(rs.getString("mingcheng"));
				lianjie.setWww(rs.getString("www"));
				lianjieList.add(lianjie);
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		return lianjieList;
	}
	
	
	public static Tinfo getJieshao()
	{
		Tinfo info=new Tinfo();
		String sql="select * from t_info where leixing='jieshao'";
		Object[] params={};
		DB mydb=new DB();
		try
		{
			mydb.doPstm(sql, params);
			ResultSet rs=mydb.getRs();
			while(rs.next())
			{
				info.setId(rs.getString("id"));
				info.setNeirong(rs.getString("neirong"));
				info.setLeixing(rs.getString("leixing"));
		    }
			rs.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		mydb.closed();
		
		return info;
	}
	
}
