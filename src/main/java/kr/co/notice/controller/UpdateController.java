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
 * Servlet implementation class UpdateController
 */
@WebServlet(name = "UpdateNoticeController", urlPatterns = { "/notice/modify.do" })
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		NoticeService service = new NoticeService();
		// select * from notice_tbl where notice_No = ?
		Notice notice = service.selectOneByNo(noticeNo);
		if(notice != null) {
			// 데이터가 있으면 modify.jsp로 이동
			request.setAttribute("notice", notice);
			request.getRequestDispatcher("/WEB-INF/views/notice/modify.jsp").forward(request, response);
		}
		else {
			request.setAttribute("msg", "수정이 완료되지 않았습니다");
			request.setAttribute("url", "/notice/list.do");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 데이터 수정용
		// UPDATE NOTICE_TBL SET NOTICE_SUBJECT =?, NOTICE_CONTENT =? WHERE NOTICE_NO = ?
		request.setCharacterEncoding("UTF-8");
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));;
		String noticeSubject = request.getParameter("noticeSubject");
		String noticeContent = request.getParameter("noticeContent");
		Notice notice = new Notice(noticeNo, noticeSubject, noticeContent);
		NoticeService service = new NoticeService();
		int result = service.updateNotice(notice);
		if (result > 0) {
			// 성공하면 상세페이지로 이동
			response.sendRedirect("/notice/detail.do?noticeNo=" + noticeNo);
		}
		else {
			// 실패하면 에러메시지 출력
			request.setAttribute("msg", "수정이 완료되지 않았습니다");
			request.setAttribute("url", "/notice/modify.do?noticeNo" + noticeNo);
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}
