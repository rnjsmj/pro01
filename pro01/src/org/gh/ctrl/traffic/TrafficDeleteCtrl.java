package org.gh.ctrl.traffic;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.TrafficDAO;

@WebServlet("/TrafficDelete.do")
public class TrafficDeleteCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public TrafficDeleteCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");


		int tno = Integer.parseInt(request.getParameter("tno"));

		TrafficDAO dao = new TrafficDAO();
		dao.deleteTraffic(tno);

		response.sendRedirect("/pro01/TrafficList.do");
		
		/*
		if(cnt>=1) {
			response.sendRedirect("/pro01/TrafficList.do");
		} else {
			response.sendRedirect("/pro01/TrafficList.do");
		}
		
		*/
	}

}
