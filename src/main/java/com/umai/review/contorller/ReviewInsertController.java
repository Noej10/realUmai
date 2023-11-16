package com.umai.review.contorller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.umai.restaurant.model.service.RestaurantServiceImple;
import com.umai.restaurant.model.vo.Restaurant;
import com.umai.review.model.service.ReviewServiceImple;
import com.umai.review.model.vo.Review;

/**
 * Servlet implementation class ReviewInsertController
 */
@WebServlet("/insert.re")
public class ReviewInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		int restNum = Integer.parseInt(request.getParameter("restNum"));
		
		Review r =new Review();
		r.setRevRestnum(Integer.parseInt(request.getParameter("restNum")));
		r.setMemberNum(Integer.parseInt(request.getParameter("userNum")));
		r.setRevTaste(Integer.parseInt(request.getParameter("taste")));
		r.setRevKind(Integer.parseInt(request.getParameter("kindness")));
		r.setRevFacility(Integer.parseInt(request.getParameter("facility")));
		r.setRevPrice(Integer.parseInt(request.getParameter("price")));
		r.setRevMobility(Integer.parseInt(request.getParameter("mobility")));
		r.setRevWaiting(Integer.parseInt(request.getParameter("waiting")));
		r.setRevSpeed(Integer.parseInt(request.getParameter("speed")));
		r.setRevClean(Integer.parseInt(request.getParameter("clean")));
		r.setRevRevisit(Integer.parseInt(request.getParameter("revisit")));
		r.setCommentContents(request.getParameter("textarea"));
		
		int currentPage = Integer.parseInt(request.getParameter("restNum"));
		int currentMem = Integer.parseInt(request.getParameter("userNum"));
		
		int result = new ReviewServiceImple().insertRview(r);
		
		int fianlScore= new ReviewServiceImple().selectFinalScore(restNum);
		
		Restaurant rev = new Restaurant();
		rev.setGrade(fianlScore);
		rev.setRestNum(restNum);
		int updateFinalScore = new RestaurantServiceImple().updateFinalScore(rev);
		
		if(result>0) {
			session.setAttribute("alertMsg", "댓글이 등록되었습니다");
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
