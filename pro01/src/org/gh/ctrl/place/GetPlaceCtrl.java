package org.gh.ctrl.place;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.PlaceDAO;
import org.gh.dto.Place;


@WebServlet("/GetPlace.do")
public class GetPlaceCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetPlaceCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int pcode = Integer.parseInt(request.getParameter("pcode"));
		
		PlaceDAO dao = new PlaceDAO();
		Place place = dao.getPlace(pcode);
		
		request.setAttribute("place", place);
		RequestDispatcher view = request.getRequestDispatcher("/place/placeDetail.jsp");
		view.forward(request, response);
	}

}
