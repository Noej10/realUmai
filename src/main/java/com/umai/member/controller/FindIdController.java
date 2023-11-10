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
 * Servlet implementation class FindIdController
 */
@WebServlet("/findid.me")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Member m =new Member();
		m.setName(request.getParameter("userName"));
		m.setEmail(request.getParameter("userEmail"));
		
		Member findId = new MemberServiceImple().findId(m);
		
		String message;
        if (findId != null) {
            // 이름과 이메일이 모두 일치하는 경우
            message = "아이디: " + findId.getUserId();
        } else {
            // 일치하지 않는 경우
            message = "이름 또는 이메일이 일치하지 않습니다.";
        }
        
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().print(message);
        //HttpSession session = request.getSession();
//        session.setAttribute("alertMsg", message);
//        response.sendRedirect(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
