package com.umai.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.umai.member.model.service.MemberServiceImple;
import com.umai.member.model.vo.Member;

/**
 * Servlet implementation class memberUpdateController
 */
@WebServlet("/updateNick.me")
public class memberUpdateNickController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberUpdateNickController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String nick = request.getParameter("nick");
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		loginUser.setNickname(nick);
		
		int result = new MemberServiceImple().updateNickMember(loginUser);
		
		Member m = new MemberServiceImple().loginMember(loginUser);
		
		if(result > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 수정 하였습니다.");
			session.setAttribute("loginUser", m);
			response.sendRedirect(request.getContextPath() + "/update.me");
		} else {
			request.setAttribute("errorMsg", "닉네임 변경에 실패하였습니다.");
			request.getRequestDispatcher("WEB-INF/views/main.jsp").forward(request, response);
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
