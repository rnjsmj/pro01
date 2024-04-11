package org.gh.ctrl.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.MemberDAO;
import org.gh.dto.Member;

@WebServlet("/MemberUpdate.do")
public class MemberUpdateCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberUpdateCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		Member member = dao.getMember(id);
		
		request.setAttribute("member", member);
		RequestDispatcher view = request.getRequestDispatcher("/member/memberInfo.jsp");
		view.forward(request, response);
	}

}
