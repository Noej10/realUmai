package com.umai.review.contorller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.member.model.vo.Member;
import com.umai.review.model.service.ReviewServiceImple;
import com.umai.review.model.vo.Review;

/**
 * Servlet implementation class ReviewDeleteController
 */
@WebServlet("/deleteRev")
public class ReviewDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Review r =new Review();
		r.setRevRestnum(Integer.parseInt(request.getParameter("revRestnum")));
		r.setMemberNum(Integer.parseInt(request.getParameter("memberNum")));
		System.out.println(r);
		int result = new ReviewServiceImple().deleteReview(r);
		
		int currentPage = (Integer.parseInt(request.getParameter("revRestnum")));
		
		if(result>0) {
			request.setAttribute("alertMsg", "리뷰삭제 성공");
//			request.getRequestDispatcher("/WEB-INF/views/board/boardDetailPage.jsp").forward(request, response);
			response.sendRedirect("detail.res?rno="+currentPage);
		}else {
			request.setAttribute("errorMsg", "상세조회 실패");
			request.getRequestDispatcher("/WEB-INF/views/board/boardDetailPage.jsp").forward(request, response);

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
