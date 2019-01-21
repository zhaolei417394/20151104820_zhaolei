package com.action;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DB;
import com.orm.Tinfo;


public class info_servlet extends HttpServlet
{
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        String type=req.getParameter("type");
		
		if(type.endsWith("gonggaoMana"))
		{
			gonggaoMana(req, res);
		}
		if(type.endsWith("gonggaoEdit"))
		{
			gonggaoEdit(req, res);
		}
		
		
		
		
		
		
		
		
		
		if(type.endsWith("jieshaoMana"))
		{
			jieshaoMana(req, res);
		}
		if(type.endsWith("jieshaoEdit"))
		{
			jieshaoEdit(req, res);
		}
	}
	
	
	
	public void gonggaoMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		Tinfo info=new Tinfo();
		String sql="select * from t_info where leixing='gonggao'";
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
		
		req.setAttribute("info", info);
		req.getRequestDispatcher("admin/gonggao/gonggaoMana.jsp").forward(req, res);
	}
	
	
	public void gonggaoEdit(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String neirong=req.getParameter("neirong").trim();
		String sql="update t_info set neirong=? where leixing='gonggao'";
		Object[] params={neirong};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
		String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public void jieshaoMana(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
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
		
		req.setAttribute("info", info);
		req.getRequestDispatcher("admin/jieshao/jieshaoMana.jsp").forward(req, res);
	}
	
	
	public void jieshaoEdit(HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
	{
		String neirong=req.getParameter("neirong").trim();
		String sql="update t_info set neirong=? where leixing='jieshao'";
		Object[] params={neirong};
		DB mydb=new DB();
		mydb.doPstm(sql, params);
		mydb.closed();
		
		req.setAttribute("msg", "操作成功");
		String targetURL = "/common/msg.jsp";
		dispatch(targetURL, req, res);
	}
	
	
	
	
	
	
	public void dispatch(String targetURI,HttpServletRequest request,HttpServletResponse response) 
	{
		RequestDispatcher dispatch = getServletContext().getRequestDispatcher(targetURI);
		try 
		{
		    dispatch.forward(request, response);
		    return;
		} 
		catch (ServletException e) 
		{
                    e.printStackTrace();
		} 
		catch (IOException e) 
		{
			
		    e.printStackTrace();
		}
	}
	public void init(ServletConfig config) throws ServletException 
	{
		super.init(config);
	}
	
	public void destroy() 
	{
		
	}
}
