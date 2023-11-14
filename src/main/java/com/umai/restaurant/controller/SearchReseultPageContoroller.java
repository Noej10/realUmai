package com.umai.restaurant.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.common.model.vo.PageInfo;
import com.umai.common.template.Pagenation;
import com.umai.restaurant.model.service.RestaurantService;
import com.umai.restaurant.model.service.RestaurantServiceImple;
import com.umai.restaurant.model.vo.Restaurant;

/**
 * Servlet implementation class SearchReseultPageContoroller
 */
@WebServlet("/result.bo")
public class SearchReseultPageContoroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchReseultPageContoroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int currentPage = Integer.parseInt(request.getParameter("cPage"));
		int listCount = new RestaurantServiceImple().selectListCount();
		String searchType = request.getParameter("searchType");
		String searchInput = request.getParameter("searchInput");
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 4, 5);
		
		ArrayList<Restaurant> list = new RestaurantServiceImple().selectList(pi);
		
		RestaurantService rService = new RestaurantServiceImple();

		if(searchType.equals("sStore")) {
			
			//식당 이름으로 검색 sql
		} else if {
			(searchType.equals("sRegion"))
			
			//지역이름으로 검색 sql
		}
		
//		HashMap<String, String> map = new HashMap<>();
//		map.put("cpage", cpage);
//		map.put("searchType", searchType);
//		map.put("searchInput", searchInput);
		
		
		
		
		
		
		
		
		request.getRequestDispatcher("WEB-INF/views/board/SearchResultPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
