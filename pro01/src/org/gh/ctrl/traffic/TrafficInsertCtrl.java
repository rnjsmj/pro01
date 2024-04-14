package org.gh.ctrl.traffic;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gh.dao.TrafficDAO;
import org.gh.dto.Traffic;

@WebServlet("/TrafficInsert.do")
public class TrafficInsertCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TrafficInsertCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Traffic traffic = new Traffic();
		traffic.setTtype(request.getParameter("ttype"));
		traffic.setNo(request.getParameter("no"));
		traffic.setRoute(request.getParameter("route"));
		traffic.setComm(request.getParameter("comm"));
		
		TrafficDAO dao = new TrafficDAO();
		int cnt = dao.insertTraffic(traffic);
		
		if(cnt>=1) {
			response.sendRedirect("/pro01/TrafficList.do");
		} else {
			response.sendRedirect("/pro01/qna/traffic_ins.jsp");
		}
	}

}
