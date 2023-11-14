package com.umai.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.board.model.vo.Board;
import com.umai.member.model.service.MemberServiceImple;
import com.umai.member.model.vo.Member;
import com.umai.restaurant.model.service.RestaurantServiceImple;
import com.umai.restaurant.model.vo.Restaurant;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login.me")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member m =new Member();
		m.setUserId(request.getParameter("userId"));

		m.setPassword(request.getParameter("password"));
		
		Member loginUser = new MemberServiceImple().loginMember(m);
		
		ArrayList<Restaurant> resList = new RestaurantServiceImple().selectListMain();
		
		if(loginUser == null) {
			request.setAttribute("errorMsg", "로그인 실패다");
	    	request.getRequestDispatcher("WEB-INF/views/main.jsp").forward(request, response);

	    }else {
	    	request.getSession().setAttribute("resList", resList);
	    	request.getSession().setAttribute("loginUser", loginUser);
	    	response.sendRedirect("boardpage");
	    	
	    	
	    	
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
