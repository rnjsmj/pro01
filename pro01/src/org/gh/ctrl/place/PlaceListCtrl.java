package org.gh.ctrl.place;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gh.dao.PlaceDAO;
import org.gh.dto.Place;


@WebServlet("/PlaceList.do")
public class PlaceListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PlaceListCtrl() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PlaceDAO dao = new PlaceDAO();
		List<Place> placeList = new ArrayList<>();
		placeList = dao.getPlaceList();
		
		request.setAttribute("placeList", placeList);
		
		RequestDispatcher view = request.getRequestDispatcher("/place/placeList.jsp");
		view.forward(request, response);
	}

}
