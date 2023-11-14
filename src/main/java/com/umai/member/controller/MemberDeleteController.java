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
 * Servlet implementation class MemberDeleteController
 */
@WebServlet("/delete.me")
public class MemberDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberDeleteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		Member m =new Member();
		m.setPassword(request.getParameter("passCheck"));
		m.setUserId(request.getParameter("userId"));
		
		Member delMember = new MemberServiceImple().checkPwdMember(m);
		HttpSession session = request.getSession();
		if(delMember != null) {
			
			int result = new MemberServiceImple().deleteMember(m);
			
			if(result>0) {
				session.setAttribute("alertMsg", "회원탈퇴에 성공했습니다");
				session.removeAttribute("loginUser");
				response.sendRedirect(request.getContextPath());
			}
		}else {
			session.setAttribute("alertMsg", "비밀번호가 틀렸습니다");
			response.sendRedirect(request.getContextPath()+"/boardpage");
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
