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
		// ��jspҳ���ȡ�û�������
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String userpassword = request.getParameter("userpassword");
		String sex = request.getParameter("sex");
		String phone = request.getParameter("phone");
		
		//UserDaoʵ����һ�����󣬶�������dao��
		userdao dao = new userdao();
		//boolean������xing��ֻ����true��false��ʵ����һ�����󣬶�������flag��
		//��dao��isExitEmail������ֵusername���ж��û����Ƿ��ظ�
		//������ֵ��flag
		boolean flag = dao.userregsiter(username);
		if(flag){
			//�û����ظ�
			//������ʾ
			JOptionPane.showMessageDialog(null, "�û����ѱ�ע�ᣬ������ע��", null, JOptionPane.ERROR_MESSAGE);
			//�ض���Registerҳ��
			response.sendRedirect("userregister.jsp");
		}
		else{
			//�û������ظ�
			
			//������ʾ
			JOptionPane.showMessageDialog(null, "ע��ɹ���", null, JOptionPane.ERROR_MESSAGE);
			//����dao��save�����������ݱ��浽���ݿ�
			dao.save(username, userpassword, sex, phone);
			//�ض���Loginҳ��
			response.sendRedirect("shouye.jsp");
			
		}
		
		
	}

}
