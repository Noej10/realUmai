package com.umai.faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.faq.model.service.FaqServiceImple;
import com.umai.faq.model.vo.Faq;

/**
 * Servlet implementation class FaqInsertController
 */
@WebServlet("/insertFaq.faq")
public class FaqInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		Faq faq = new Faq();
		faq.setFaqTitle(request.getParameter("faqTitle"));
		faq.setFaqContent(request.getParameter("faqContent"));
		faq.setFaqKind(request.getParameter("category"));
		
		int reuslt = new FaqServiceImple().insertFaq(faq);
		
		
		response.sendRedirect(request.getContextPath() + "/faqList.faq?cPage=1");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
