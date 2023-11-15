package com.umai.faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.umai.faq.model.vo.Faq;

/**
 * Servlet implementation class FaqUpdateFormController
 */
@WebServlet("/faqUpdateForm.faq")
public class FaqUpdateFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FaqUpdateFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		Faq faq = new Faq();
		faq.setFaqNum(Integer.parseInt(request.getParameter("faqNum")));
		faq.setFaqKind(request.getParameter("faqKind"));
		faq.setFaqTitle(request.getParameter("faqTitle"));
		faq.setFaqContent(request.getParameter("faqContent"));
		
//		System.out.println(faq);
		request.setAttribute("faqInfo", faq);
		
		request.getRequestDispatcher("WEB-INF/views/faq/faqUpdateForm.jsp").forward(request, response);
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
