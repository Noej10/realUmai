package com.umai.restaurant.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.umai.common.model.vo.Attachment;
import com.umai.member.model.vo.Member;
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
		//int memNum = Integer.parseInt(request.getParameter("uNum"));
		HttpSession session = request.getSession();
		
		Member mem = (Member) session.getAttribute("loginUser");
		int memNum = mem.getUserNum();
		
		int result = new RestaurantServiceImple().increaseCount(restNo);
		
		if(result>0) {
			Restaurant tableCheck = new RestaurantServiceImple().tableCheck(restNo, memNum);
			
			if(tableCheck == null) {
				int createTable = new RestaurantServiceImple().createTable(restNo, memNum);
				
			}
			
			Restaurant r = new RestaurantServiceImple().selectRest(restNo);
			ArrayList<Attachment> subList = new RestaurantServiceImple().selectPhoto(restNo);
			ArrayList<Review> rev = new ReviewServiceImple().selectReview(restNo);
			Restaurant like = new RestaurantServiceImple().selectlike(restNo, memNum);
			int likeCount = new RestaurantServiceImple().likeCount(restNo);
			
			
			
			request.setAttribute("r", r);
			request.getSession().setAttribute("subList", subList);
			request.getSession().setAttribute("rev", rev);
			request.getSession().setAttribute("mem", mem);
			request.getSession().setAttribute("like", like);
			request.getSession().setAttribute("likeCount", likeCount);
			
			request.getRequestDispatcher("/WEB-INF/views/board/boardDetailPage.jsp").forward(request, response);
		}else {
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
