package com.kakao.web.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kakao.web.notice.service.NoticeService;
import com.kakao.web.notice.service.NoticeServiceImpl;

@WebServlet("/notice-update")
public class NoticeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private NoticeService noticeService = null;
    
    public NoticeUpdate() {
    	noticeService = new NoticeServiceImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		request.setAttribute("notice", noticeService.getNotice(code));
		request.getRequestDispatcher("/WEB-INF/views/notice_update.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
