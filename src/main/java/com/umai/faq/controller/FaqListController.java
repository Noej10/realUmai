package com.umai.faq.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.announce.model.service.AnnounceServiceImple;
import com.umai.common.model.vo.PageInfo;
import com.umai.common.template.Pagenation;
import com.umai.faq.model.service.FaqServiceImple;
import com.umai.faq.model.vo.Faq;

/**
 * Servlet implementation class FaqListController
 */
@WebServlet("/faqList.faq")
public class FaqListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currentPage = Integer.parseInt(request.getParameter("cPage"));
		int listCount = new FaqServiceImple().selectListCount();
		
		PageInfo pi = Pagenation.getPageInfo(listCount, currentPage, 10, 6);
		ArrayList<Faq> list = new FaqServiceImple().selectList(pi);
		
		request.setAttribute("pi", pi);
		request.setAttribute("faqList", list);
		System.out.println(pi);
		System.out.println(list);
		request.getRequestDispatcher("WEB-INF/views/faq/faqPage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
