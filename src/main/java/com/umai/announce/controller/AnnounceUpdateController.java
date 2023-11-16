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

/**
 * Servlet implementation class AnnounceUpdateController
 */
@WebServlet("/update.an")
public class AnnounceUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnounceUpdateController() {
        super();
        // TODO Auto-generated constructor stub
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
		
		int result = new AnnounceServiceImple().updateAnnounce(ann);
		
		HttpSession session = request.getSession();
		if(result>0) {
			session.setAttribute("alertMsg", "공지사항 수정이 완료되었습니다.");
			response.sendRedirect(request.getContextPath()+"/detail.an?cPage="+annNum);
		}else {
			session.setAttribute("alertMsg", "공지사항 수정에 실패하였습니다.");
			response.sendRedirect(request.getContextPath()+"/detail.an?cPage="+annNum);
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
