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
 * Servlet implementation class memberUpdatePwdController
 */
@WebServlet("/updatePwd.me")
public class memberUpdatePwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberUpdatePwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		Member m = new Member();
		m.setUserId(request.getParameter(userId));
		m.setPassword(request.getParameter(password));
		int result = new MemberServiceImple().updatePwdMember(m);
		
		if (result > 0) {
			request.setAttribute("errorMsg", "비밀번호 수정에 실패하였습니다.");
			request.getRequestDispatcher("WEB-INF/views/main.jsp").forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 수정 하였습니다.");
			session.setAttribute("loginUser", m);
			
			response.sendRedirect(request.getContextPath() + "/memberRetouchPage.jsp");
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
