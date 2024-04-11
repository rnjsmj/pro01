package org.gh.ctrl.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.MemberDAO;
import org.gh.dto.Member;

@WebServlet("/JoinPro.do")
public class JoinProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JoinProCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setPassword(request.getParameter("password"));
		member.setName(request.getParameter("name"));
		member.setTel(request.getParameter("tel"));
		member.setEmail(request.getParameter("email"));
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(member);
		
		if(cnt>0) {
			response.sendRedirect(request.getContextPath());
		} else {
			response.sendRedirect("/login.jsp");
		}
	}
}
