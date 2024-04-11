package org.gh.ctrl.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.MemberDAO;
import org.gh.dto.Member;

@WebServlet("/MemberUpdatePro.do")
public class MemberUpdateProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberUpdateProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setPassword(request.getParameter("password"));
		member.setName(request.getParameter("name"));
		member.setTel(request.getParameter("tel"));
		member.setEmail(request.getParameter("email"));
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(member);
		if(cnt>0) {
			response.sendRedirect("/pro01");
		} else {
			response.sendRedirect("/UpdateMember.do?id="+id);
		}
	}

}
