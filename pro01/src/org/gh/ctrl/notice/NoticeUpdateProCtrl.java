package org.gh.ctrl.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.NoticeDAO;
import org.gh.dto.Notice;

@WebServlet("/NoticeUpdatePro.do")
public class NoticeUpdateProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public NoticeUpdateProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Notice notice = new Notice();
		notice.setNo(Integer.parseInt(request.getParameter("no")));
		notice.setTitle(request.getParameter("title"));
		notice.setContent(request.getParameter("content"));
		
		NoticeDAO dao = new NoticeDAO();
		int cnt = dao.updateNoticePro(notice);
		
		if(cnt>0) {
			response.sendRedirect("/pro01/GetNoticeTask.do?no="+notice.getNo());
		} else {
			response.sendRedirect("/pro01//NoticeUpdate.do?no="+notice.getNo());
		}
	}

}
