package org.gh.ctrl.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.NoticeDAO;

@WebServlet("/NoticeDelete.do")
public class NoticeDeleteCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public NoticeDeleteCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.deleteNotice(no);
		
		if(cnt>0) {
			response.sendRedirect("/pro01/NoticeList.do");
		} else {
			response.sendRedirect("/pro01/GetNoticeTask.do?no="+no);
		}
	}


}
