package com.umai.announce.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.umai.announce.model.service.AnnounceServiceImple;
import com.umai.announce.model.vo.Announce;

@WebServlet("/announceRetouch.an")

public class AnnounceRetouchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AnnounceRetouchController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int annNum = Integer.parseInt(request.getParameter("annNum"));
		String annTitle = request.getParameter("title");
		String annDetail = request.getParameter("detail");
		
		Announce ann = new Announce();
		
		ann.setAnnNum(annNum);
		ann.setTitle(annTitle);
		ann.setDetail(annDetail);
		System.out.println(ann);
//		
//		int result = new AnnounceServiceImple().updateAnnounce(ann);
//		
//		HttpSession session = request.getSession();
//		if(result>0) {
//			session.setAttribute("alertMsg", "공지사항 수정이 완료되었습니다.");
//			response.sendRedirect(request.getContextPath()+"detail.an?cPage"+annNum);
//		}else {
//			session.setAttribute("alertMsg", "공지사항 수정에 실패하였습니다.");
//			response.sendRedirect(request.getContextPath()+"detail.an?cPage"+annNum);
//		}
		request.setAttribute("a", ann);
		request.getRequestDispatcher("WEB-INF/views/announce/announceRetouchPage.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
