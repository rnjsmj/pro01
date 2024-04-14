package org.gh.ctrl.traffic;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.TrafficDAO;
import org.gh.dto.Traffic;

@WebServlet("/TrafficUpdatePro.do")
public class TrafficUpdateProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TrafficUpdateProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int tno = Integer.parseInt(request.getParameter("tno"));
		String ttype = request.getParameter("ttype");
		String no = request.getParameter("no");
		String comm = request.getParameter("comm");
		String route = request.getParameter("route");
		
		Traffic traffic = new Traffic();
		traffic.setTno(tno);
		traffic.setTtype(ttype);
		traffic.setNo(no);
		traffic.setComm(comm);
		traffic.setRoute(route);
		
		TrafficDAO dao = new TrafficDAO();
		int cnt = dao.updateTrafficPro(traffic);
		
		if(cnt>=1) {
			response.sendRedirect("/pro01/TrafficList.do");
		} else {
			response.sendRedirect("/pro01/GetTraffic.do?tno="+tno);
		}
	}

}
