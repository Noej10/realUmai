package com.umai.restaurant.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.restaurant.model.service.RestaurantServiceImple;
import com.umai.restaurant.model.vo.Restaurant;

/**
 * Servlet implementation class NoSearchResultContorller
 */
@WebServlet("/noresult.bo")
public class NoSearchResultContorller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoSearchResultContorller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String restName = request.getParameter("restName");
		
		ArrayList<Restaurant> list = new RestaurantServiceImple().selectNoSearchList();
		
		request.getRequestDispatcher("WEB-INF/views/board/noSearchResultPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
