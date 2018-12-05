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
		// ��jspҳ���ȡ�û�������  �������������Ҫ��jspҳ���name����һ����jsp�У�name=username��
		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		
		//userʵ����һ�����󣬶�������userbean��
		user userbean = new user();
		
		//��ֵ��userbean����
		userbean.setUsername(username);
		userbean.setUserpassword(userpassword);
		
		
		//userdaoʵ����һ�����󣬶�������udao��
		userdao udao = new userdao();
		
		//userʵ����һ�����󣬶�������us��
		//����userdao������õ�login�����ķ���ֵ��ֵ��user
		user us = udao.login(userbean);
		
		
			if (us != null) {//�ж��û��������Ƿ����
				//�ɹ�����תindex.jspҳ�棬ʧ�ܷ���Login.jsp
				
				//HttpSessionʵ����һ�����󣬶�������session��
				HttpSession session = request.getSession(); 
				//����session��setAttribute������
				//��username��ֵ��ֵ��key����jspҳ���п���ȡ����
				session.setAttribute("key",username);
				
				//�ض���
				response.sendRedirect("root.jsp");
			
				}
			else {
				
				//ҳ�浯����ʾ���󣬿��Բ��á�
				JOptionPane.showMessageDialog(null, "�û������������", null, JOptionPane.ERROR_MESSAGE);
				//�ض���
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
