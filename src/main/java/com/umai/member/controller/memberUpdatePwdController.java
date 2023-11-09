package com.umai.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.member.model.service.MemberServiceImpl;
import com.umai.member.model.vo.Member;

/**
 * Servlet implementation class memberUpdatePwdController
 */
@WebServlet("/memberUpdatePwdController")
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
		int result = new MemberServiceImpl().updateEmailMember(m);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
