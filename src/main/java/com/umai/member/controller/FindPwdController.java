package com.umai.member.controller;

import java.io.Console;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.member.model.service.MemberServiceImple;
import com.umai.member.model.vo.Member;

/**
 * Servlet implementation class FindPwdController
 */
@WebServlet("/findpwd.me")
public class FindPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwdController() {
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
		m.setName(request.getParameter("userName"));
		m.setEmail(request.getParameter("userEmail"));
		
		Member findPwd = new MemberServiceImple().findPwd(m);
		
		String message;
        if (findPwd != null) {
            // 이름과 이메일이 모두 일치하는 경우
            message = "비밀번호: " + findPwd.getPassword();
        } else {
            // 일치하지 않는 경우
            message = "이름, 아이디 또는 이메일이 일치하지 않습니다.";
        }
        
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().print(message);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
