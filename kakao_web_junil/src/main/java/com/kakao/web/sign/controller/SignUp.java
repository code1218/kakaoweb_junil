package com.kakao.web.sign.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.web.sign.dao.SignUpDao;
import com.kakao.web.sign.dao.SignUpDaoImpl;

@WebServlet("/signUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SignUpDao signUpDao = new SignUpDaoImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		request.getRequestDispatcher("WEB-INF/views/sign_up_email.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String submitStatus = request.getParameter("submit_status");
		
		if(submitStatus.equals("email")) {
			String id = request.getParameter("id");
			
			int flag = signUpDao.idCheck(id+"@kakao.com");
			
			System.out.println(flag);
			
			if(flag == 1) {
				request.setAttribute("id", id);
				request.setAttribute("flag", flag);
				
				request.getRequestDispatcher("WEB-INF/views/sign_up_email.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("WEB-INF/views/sign_up_password.jsp").forward(request, response);
			}
		}
	
	}

}
