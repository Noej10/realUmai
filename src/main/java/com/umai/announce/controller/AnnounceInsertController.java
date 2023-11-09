package com.umai.announce.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.announce.model.service.AnnounceService;
import com.umai.announce.model.service.AnnounceServiceImple;
import com.umai.announce.model.vo.Announce;

/**
 * Servlet implementation class AnnounceInsertController
 */
@WebServlet("/announceInsert.an")
public class AnnounceInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnnounceInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		Announce ann = new Announce();
		
		ann.setTitle(request.getParameter("title"));
		ann.setDetail(request.getParameter("detail"));
		
		int result = new AnnounceServiceImple().insertAnnounce(ann);
		
		if(result>0) {
			response.sendRedirect(request.getContextPath()+"/announceList.an?cPage=1");
		}else {
			
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
