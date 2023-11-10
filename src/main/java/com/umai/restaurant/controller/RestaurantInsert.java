package com.umai.restaurant.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.umai.common.MyFileRenamePolicy;

/**
 * Servlet implementation class RestaurantInsert
 */
@WebServlet("/insertRestaurant.re")
public class RestaurantInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		if(ServletFileUpload.isMultipartContent(request)) {
			// 파일 용량 제한
			int maxSize = 10 * 1024 * 1024;
			
			// 저장할 파일의 경로 지정
			String savePath = request.getSession().getServletContext().getRealPath("/resources/thumbnail_upfile/");
			// 멀티리퀘스트로 변환
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			
			//레스토랑 객체 생성 후 넣어줌
//			Board b = new Board();
//			b.setBoardWriter(multiRequest.getParameter("userNo"));
//			b.setBoardTitle(multiRequest.getParameter("title"));
//			b.setBoardContent(multiRequest.getParameter("content"));
			
			//Attachment 첨부파일에 여러번 insert할 데이터 추출
			
			ArrayList<Attachment> list = new ArrayList<>();
			
			for(int i=1; i<=4; i++) {
				String key = "file"+i;
				if(multiRequest.getOriginalFileName(key) != null) {
					//첨부파일이 존재할 경우
					// Attachment 생성 + 원본명, 수정된 파일명, 폴더 경로, 파일레벨 => list에 담기
					Attachment at = new Attachment();
					at.setOriginName(key);
					at.setChangeName(multiRequest.getFilesystemName(key));
					at.setFilePath("resources/thumbnail_upfile/");
				
					if(i==1) {// 대표이미지
					at.setFileLevel(1);
					}else { // 상세이미지
					at.setFileLevel(2);
					}
					list.add(at);
				}
				
			}
			
			
			int result = new BoardService().insertThumbnailBoard(b, list);
			
			if(result>0) { // 성공 /jsp/list.th url 재요청
				request.getSession().setAttribute("alertMsg", "게시글 작성 성공");
				response.sendRedirect(request.getContextPath() + "/list.th");
				
			}else { // 실패 에러 포워딩
				request.setAttribute("errorMsg", "게시글 등록에 실패했습니다.");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
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
