package kr.co.funnyjoy.item.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.funnyjoy.item.model.service.ItemService;
import kr.co.funnyjoy.item.model.vo.Item;
import kr.co.funnyjoy.item.model.vo.PageData;

/**
 * Servlet implementation class ItemController
 */
@WebServlet("/item/best.do")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// SELECT * FROM ITEM_TBL
		ItemService service = new ItemService();
		String page = request.getParameter("currentPage") != null ? request.getParameter("currentPage") : "1";
		int currentPage = Integer.parseInt(page);
		PageData pd = service.selectItemList(currentPage);
		List<Item> itemList = pd.getItemList();
		
		// nList는 없어도 null이 아니라서 isEmpt()로 비어있는지 체크함
		if(!itemList.isEmpty()) {
			request.setAttribute("itemList", itemList);
			request.setAttribute("pageNavi", pd.getPageNavi());
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/item/best.jsp");
			view.forward(request, response);
		}
		else {
			request.setAttribute("msg", "데이터 조회가 완료되지 않았습니다.");
			request.setAttribute("url", "/index.jsp");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 상품 추가하는 코드 만들 때 사용
	}

}
