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

		String originPwd = request.getParameter("originPwd");
		String changePwd = request.getParameter("changePwd");
		String checkPwd = request.getParameter("checkPwd");
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
//		System.out.println(password);
//		System.out.println(changePwd);
//		System.out.println(checkPwd);
//		System.out.println(loginUser);
		
		// loginUser안에 password랑 originPwd가 같은지 
		// 같다면 수정한다. 틀리면 error
		if(loginUser.getPassword().equals(originPwd)) {
			//성공하면
			if(changePwd.equals(checkPwd)) {
				//똑같으면
				loginUser.setPassword(changePwd);
				int result = new MemberServiceImple().updatePwdMember(loginUser);
				
				if(result>0) {
					//성공
				Member updateM = new MemberServiceImple().loginMember(loginUser);
				session.setAttribute("alertMsg", "비밀번호 변경에 성공했습니다.");
				session.setAttribute("loginUser", loginUser);
				
				response.sendRedirect(request.getContextPath() + "/update.me");
				}else {
					loginUser.setPassword(originPwd);
					session.setAttribute("alertMsg", "비밀번호 변경에 실패했습니다.");
					session.setAttribute("loginUser", loginUser);
					
					response.sendRedirect(request.getContextPath() + "/update.me");
					
				}
				
			}else {
				//안똑같으면
				session.setAttribute("alertMsg", "입력하신 비밀번호가 같지 않습니다.");
				session.setAttribute("loginUser", loginUser);
				
				response.sendRedirect(request.getContextPath() + "/update.me");
			}
			
		}else {
			//틀리면
			
			session.setAttribute("alertMsg", "입력하신 비밀번호가 올바르지 않습니다.");
			session.setAttribute("loginUser", loginUser);
			
			response.sendRedirect(request.getContextPath() + "/update.me");
			
		}
		
		Member updateM = new MemberServiceImple().loginMember(loginUser);
		
//		if (updateM == null) {
//			request.setAttribute("errorMsg", "비밀번호 수정에 실패하였습니다.");
//			request.getRequestDispatcher("WEB-INF/views/main.jsp").forward(request, response);
//		} else {
//			HttpSession session = request.getSession();
//			session.setAttribute("alertMsg", "성공적으로 수정 하였습니다.");
//			session.setAttribute("loginUser", updateM);
//			
//			response.sendRedirect(request.getContextPath() + "/update.me");
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
