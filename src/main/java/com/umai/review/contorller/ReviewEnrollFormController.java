package com.umai.review.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.umai.restaurant.model.vo.Restaurant;
import com.umai.review.model.service.ReviewServiceImple;
import com.umai.review.model.vo.Review;

/**
 * Servlet implementation class ReviewEnrollFormController
 */
@WebServlet("/reviewEnroll.re")
public class ReviewEnrollFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewEnrollFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Review r =new Review();
		r.setRevRestnum(Integer.parseInt(request.getParameter("rresNum")));
		r.setMemberNum(Integer.parseInt(request.getParameter("rmemNum")));
		
		Restaurant res = new Restaurant();
		res.setRestName(request.getParameter("rresName"));
		res.setFilePath(request.getParameter("rresFile"));
		
		Review re = new ReviewServiceImple().checkReview(r);
		
		int currentPage = Integer.parseInt(request.getParameter("rresNum"));
		
		HttpSession session = request.getSession();
		if(re == null) {
			request.setAttribute("r", r);
			request.setAttribute("res", res);
			request.getRequestDispatcher("/WEB-INF/views/restaurant/reviewEnrollForm.jsp").forward(request, response);
		}else {
			session.setAttribute("alertMsg", "댓글이 이미 존재합니다(식당 하나당 리뷰는 한개만 등록가능)");
			response.sendRedirect("detail.res?rno="+currentPage);
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
