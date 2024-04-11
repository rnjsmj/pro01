package org.gh.ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.NoticeDAO;
import org.gh.dto.Notice;

@WebServlet("/NoticeInsert.do")
public class NoticeInsertCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeInsertCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Notice notice = new Notice();
		
		notice.setTitle(request.getParameter("title"));
		notice.setContent(request.getParameter("content"));
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.insertNotice(notice);
		
		/*
		ServletContext application = request.getServletContext();
		String home = application.getContextPath();
		 */
		
		if(cnt>0) {
			response.sendRedirect("/pro01/NoticeList.do");
		} else {
			response.sendRedirect("/pro01/notice/notice_ins.jsp");
		}
	}

}
