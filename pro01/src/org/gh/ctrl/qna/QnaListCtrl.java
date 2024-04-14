package org.gh.ctrl.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.QnaDAO;
import org.gh.dto.Qna;

@WebServlet("/QnaList.do")
public class QnaListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public QnaListCtrl() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaDAO dao = new QnaDAO();
		List<Qna> qnaList = dao.getQnaList();
		request.setAttribute("qnaList", qnaList);
		
		RequestDispatcher view = request.getRequestDispatcher("/qna/qnaList.jsp");
		view.forward(request, response);
	}

}
