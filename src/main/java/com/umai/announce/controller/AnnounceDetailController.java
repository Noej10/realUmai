package com.umai.announce.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.announce.model.service.AnnounceServiceImple;
import com.umai.announce.model.vo.Announce;

/**
 * Servlet implementation class AnnounceDetailController
 */
@WebServlet("/detail.an")
public class AnnounceDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnounceDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int annNum = Integer.parseInt(request.getParameter("cPage"));
		
	   Announce ann = new AnnounceServiceImple().selectDetail(annNum);
		
		
		
		request.setAttribute("a", ann);
		
		request.getRequestDispatcher("WEB-INF/views/announce/announecDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
