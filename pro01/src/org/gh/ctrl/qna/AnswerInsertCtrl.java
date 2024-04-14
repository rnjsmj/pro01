package org.gh.ctrl.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gh.dao.QnaDAO;
import org.gh.dto.Qna;


@WebServlet("/AnswerInsert.do")
public class AnswerInsertCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AnswerInsertCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//HttpSession session = request.getSession();
		//String aid = (String) session.getAttribute("sid");
		
		Qna qna = new Qna();
		qna.setParno(Integer.parseInt(request.getParameter("parno")));
		qna.setTitle(request.getParameter("title"));
		qna.setContent(request.getParameter("content"));
		QnaDAO dao = new QnaDAO();
		int cnt = dao.insertAnswer(qna);
		
		if(cnt>=1) {
			response.sendRedirect("/pro01/QnaList.do");
		} else {
			response.sendRedirect("/pro01/qna/a_ins.jsp?parno="+qna.getParno());
		}
	}

}
