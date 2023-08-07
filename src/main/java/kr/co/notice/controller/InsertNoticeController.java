package kr.co.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.notice.model.service.NoticeService;
import kr.co.notice.model.vo.Notice;

/**
 * Servlet implementation class InsertNoticeController
 */
@WebServlet("/notice/insert.do")
public class InsertNoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertNoticeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 페이지 이동
		request.getRequestDispatcher("/WEB-INF/views/notice/insert.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 공지사항 등록
		request.setCharacterEncoding("UTF-8");  // 한글 깨짐 방지
		String noticeSubject = request.getParameter("noticeSubject");
		String noticeContent = request.getParameter("noticeContent");
		Notice notice = new Notice(noticeSubject, noticeContent);
		NoticeService service = new NoticeService();
		int result = service.insertNotice(notice);
		// INSERT INTO NOTICE_TBL VALUES(SEQ_NOTICENO.NEXTVAL, ~~)
		//insertNotice() 메소드
		
		if(result > 0) {
			// 리스트페이지로 이동
			response.sendRedirect("/notice/list.do");
		}
		else {
			// 에러 페이지로 이동
			request.setAttribute("msg", "공지사항이 등록되지 않았습니다.");
			request.setAttribute("url", "/notice/insert.do");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp");
		}
	}

}
