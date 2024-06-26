package org.gh.ctrl.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.NoticeDAO;
import org.gh.dto.Notice;

@WebServlet("/NoticeUpdate.do")
public class NoticeUpdateCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeUpdateCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
	
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeDAO dao = new NoticeDAO();
		Notice notice = dao.getNoticeTask(no);
		
		request.setAttribute("notice", notice);
		RequestDispatcher view = request.getRequestDispatcher("/notice/notice_edit.jsp");
		view.forward(request, response);
		
	}

}
