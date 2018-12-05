package com.zl.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.zl.bean.user;
import com.zl.dao.userdao;

/**
 * Servlet implementation class userservlet
 */
@WebServlet("/userservlet")
public class userservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html;charset=utf-8");
		// 从jsp页面读取用户名密码  括号里的名字需要和jsp页面的name属性一样（jsp中：name=username）
		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		
		//user实例化一个对象，对象名（userbean）
		user userbean = new user();
		
		//传值给userbean对象
		userbean.setUsername(username);
		userbean.setUserpassword(userpassword);
		
		
		//userdao实例化一个对象，对象名（udao）
		userdao udao = new userdao();
		
		//user实例化一个对象，对象名（us）
		//并将userdao对象调用的login方法的返回值赋值给user
		user us = udao.login(userbean);
		
		
			if (us != null) {//判断用户名密码是否存在
				//成功则跳转index.jsp页面，失败返回Login.jsp
				
				//HttpSession实例化一个对象，对象名（session）
				HttpSession session = request.getSession(); 
				//调用session的setAttribute方法，
				//将username的值赋值给key，在jsp页面中可以取出。
				session.setAttribute("key",username);
				
				//重定向
				response.sendRedirect("root.jsp");
			
				}
			else {
				
				//页面弹框，提示错误，可以不用。
				JOptionPane.showMessageDialog(null, "用户名或密码错误", null, JOptionPane.ERROR_MESSAGE);
				//重定向
				response.sendRedirect("shouye.jsp");
			}
		} 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}
