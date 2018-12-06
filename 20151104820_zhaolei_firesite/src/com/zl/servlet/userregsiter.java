package com.zl.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.zl.dao.userdao;


/**
 * Servlet implementation class userregsiter
 */
@WebServlet("/userregsiter")
public class userregsiter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userregsiter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 从jsp页面读取用户名密码
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		String sex = request.getParameter("sex");
		String phone = request.getParameter("phone");
		
		//UserDao实例化一个对象，对象名（dao）
		userdao dao = new userdao();
		//boolean（布尔xing，只能是true和false）实例化一个对象，对象名（flag）
		//给dao的isExitEmail方法传值username，判断用户名是否重复
		//将返回值给flag
		boolean flag = dao.userregsiter(username);
		if(flag){
			//用户名重复
			//弹框提示
			JOptionPane.showMessageDialog(null, "用户名已被注册，请重新注册", null, JOptionPane.ERROR_MESSAGE);
			//重定向Register页面
			response.sendRedirect("userregister.jsp");
		}
		else{
			//用户名不重复
			
			//弹框提示
			JOptionPane.showMessageDialog(null, "注册成功！", null, JOptionPane.ERROR_MESSAGE);
			//调用dao的save方法，将数据保存到数据库
			dao.save(username, userpassword, sex, phone);
			//重定向Login页面
			response.sendRedirect("shouye.jsp");
			
		}
		
		
	}

}
