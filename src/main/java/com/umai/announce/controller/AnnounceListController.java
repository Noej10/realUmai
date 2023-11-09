package com.umai.announce.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.announce.model.service.AnnounceServiceImple;
import com.umai.announce.model.vo.Announce;
import com.umai.common.model.vo.PageInfo;
import com.umai.common.template.Pagenation;

/**
 * Servlet implementation class AnnounceList
 */
@WebServlet("/announceList.an")
public class AnnounceListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnounceListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int currentPage = Integer.parseInt(request.getParameter("cPage"));
		int listCount = new AnnounceServiceImple().selectListCount();
		
//		System.out.println(currentPage);
//		System.out.println(listCount);
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 3);
		
		ArrayList<Announce> list = new AnnounceServiceImple().selectList(pi); 
		
		System.out.println(list);
		request.setAttribute("pi", pi);
		request.setAttribute("list", list);
		request.getRequestDispatcher("WEB-INF/views/announce/announcePage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
