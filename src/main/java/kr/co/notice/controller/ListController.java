package kr.co.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.notice.model.service.NoticeService;
import kr.co.notice.model.vo.Notice;
import kr.co.notice.model.vo.PageData;

/**
 * Servlet implementation class ListController
 */
@WebServlet("/notice/list.do")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// /notice/list.do를 주소표시줄에 입력하고 엔터치면 Get방식으로 서버 요청함 -> 서버는 doGet()으로 동작함.
		// 쿼리문 생각해 보기
		// select * from notice_tbl order by notice_no desc(최신순으로 가져오기, 페이징처리는 보류)
		
		NoticeService service = new NoticeService();
		
		String page = request.getParameter("currentPage") != null ? request.getParameter("currentPage") : "1";  // <= 삼항연산자임
		int currentPage = Integer.parseInt(page);
		PageData pd = service.selectNoticeList(currentPage);
		// 데이터가 여러개니까 List로 받았고, 쿼리문은 매개변수가 필요없는 상태
		List<Notice> nList = pd.getnList();  // pd에 service에서 받아온 nList가 들어있어서 pd에서 꺼내옴
		// List<Notice> nList = service.selectNoticeList(currentPage);
		// nList는 없어도 null이 아니라서 isEmpt()로 비어있는지 체크함
		// 비슷한 방법으로 nList.size() > 0 사용해도 됨
		if(!nList.isEmpty()) {
			// 성공하면 list.do로 이동
			request.setAttribute("nList", nList);
			request.setAttribute("pageNavi", pd.getPageNavi());
			request.getRequestDispatcher("/WEB-INF/views/notice/list.jsp").forward(request, response);
		}
		else {
			// 실패하면 error메시지 출력 후 메인으로 이동
			request.setAttribute("msg", "데이터 조회가 완료되지 않았습니다.");
			request.setAttribute("url", "/index.jsp");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
