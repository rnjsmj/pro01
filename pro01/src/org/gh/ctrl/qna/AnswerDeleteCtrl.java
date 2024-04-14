package org.gh.ctrl.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.QnaDAO;

@WebServlet("/AnswerDelete.do")
public class AnswerDeleteCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AnswerDeleteCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");


		int parno = Integer.parseInt(request.getParameter("no"));

		QnaDAO dao = new QnaDAO();
		int cnt = dao.deleteAnswer(parno);

		if(cnt>=1) {
			response.sendRedirect("/pro01/QnaList.do");
		} else {
			response.sendRedirect("/pro01/GetQnaTask.do?no="+parno);
		}
	}

}
