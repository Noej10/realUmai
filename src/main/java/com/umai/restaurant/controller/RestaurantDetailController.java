package com.umai.restaurant.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.common.model.vo.Attachment;
import com.umai.restaurant.model.service.RestaurantServiceImple;
import com.umai.restaurant.model.vo.Restaurant;
import com.umai.review.model.service.ReviewServiceImple;
import com.umai.review.model.vo.Review;

/**
 * Servlet implementation class RestaurantDetailController
 */
@WebServlet("/detail.res")
public class RestaurantDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		int restNo = Integer.parseInt(request.getParameter("rno"));
		
		int result = new RestaurantServiceImple().increaseCount(restNo);
		
		if(result>0) {
			Restaurant r = new RestaurantServiceImple().selectRest(restNo);
			ArrayList<Attachment> subList = new RestaurantServiceImple().selectPhoto(restNo);
			ArrayList<Review> rev = new ReviewServiceImple().selectReview(restNo);
			Restaurant like = new RestaurantServiceImple().selectlike(restNo, result);
			
			request.setAttribute("r", r);
			request.getSession().setAttribute("subList", subList);
			request.getSession().setAttribute("rev", rev);
			request.getSession().setAttribute("like", like);
			System.out.println(rev);
			request.getRequestDispatcher("/WEB-INF/views/board/boardDetailPage.jsp").forward(request, response);
		}else {
			System.out.println("increase count 실패");
			request.setAttribute("errorMsg", "상세조회 실패");
			request.getRequestDispatcher("WEB-INF/views/board/boardPage.jsp").forward(request, response);
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
