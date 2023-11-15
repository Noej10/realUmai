package com.umai.restaurant.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.naming.directory.SearchResult;
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
@WebServlet("/search.bo")
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
		String searchType = request.getParameter("searchType");  // 지역별 or 식당별
		String searchInput = request.getParameter("searchInput"); // 사용자가 입력한 키워드 값
		if(searchType.equals("sStore")) {
		//식당 이름으로 검색 sql
			int listCount = new RestaurantServiceImple().searchSStore(searchInput);
			if(listCount==0) {
				//검색결과없음
				request.setAttribute("searchType", searchType);
				request.setAttribute("searchInput", searchInput);
				
				request.getRequestDispatcher("WEB-INF/views/board/noSearchResultPage.jsp").forward(request, response);
			} else {
				//검색결과있음
				PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 4, 5);
				ArrayList<Restaurant> list = new RestaurantServiceImple().selectSearchList(pi,searchInput);
				
				request.setAttribute("pi", pi);
				request.setAttribute("list", list);
				request.setAttribute("searchType", searchType);
				request.setAttribute("searchInput", searchInput);
				
				request.getRequestDispatcher("WEB-INF/views/board/searchResultPage.jsp").forward(request, response);
			}

		} else{
		//지역이름으로 검색 sql
			int listCount = new RestaurantServiceImple().searchSRegion(searchInput);
			if(listCount==0) {
				//검색결과 없음
				request.setAttribute("searchType", searchType);
				request.setAttribute("searchInput", searchInput);
				
				request.getRequestDispatcher("WEB-INF/views/board/noSearchResultPage.jsp").forward(request, response);
			} else {
				//검색결과있음
				PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 4, 5);
				ArrayList<Restaurant> list = new RestaurantServiceImple().selectReSearchList(pi,searchInput);
				
				request.setAttribute("pi", pi);
				request.setAttribute("list", list);
				request.setAttribute("searchType", searchType);
				request.setAttribute("searchInput", searchInput);
				
				request.getRequestDispatcher("WEB-INF/views/board/searchResultPage.jsp").forward(request, response);
		
				}	
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
