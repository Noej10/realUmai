package com.umai.restaurant.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.restaurant.model.service.RestaurantServiceImple;

/**
 * Servlet implementation class RestaurantUnlikeController
 */
@WebServlet("/updateUnlike")
public class RestaurantUnlikeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantUnlikeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int restNum = Integer.parseInt(request.getParameter("restNum"));
		int userNum = Integer.parseInt(request.getParameter("userNum"));
		
		int result = new RestaurantServiceImple().updateUnlike(restNum, userNum);
        response.getWriter().print(result);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
