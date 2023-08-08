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
@WebServlet("/item/total.do")
public class ItemTotalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemTotalController() {
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
		int totalCount = service.totalCount();
		
		// nList는 없어도 null이 아니라서 isEmpt()로 비어있는지 체크함
		if(!itemList.isEmpty()) {
			request.setAttribute("itemList", itemList);
			request.setAttribute("pageNavi", pd.getPageNavi());
			request.setAttribute("totalCount", totalCount);
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/item/total.jsp");
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
		request.setCharacterEncoding("UTF-8");  //한글깨짐 방지
		String itemName = request.getParameter("itemName");
		String itemImageName = request.getParameter("itemImageName");
		String itemImagePath = request.getParameter("itemImagePath");
		String itemPublisher = request.getParameter("itemPublisher");
		int itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
		
		Item item = new Item(itemName, itemImageName, itemImagePath, itemPublisher, itemPrice);
		ItemService service = new ItemService();
		// insert into item_tbl values(?,?,?,?,?)
		
		int result = service.insertItem(item);
		if(result > 0) {
			response.sendRedirect("/item.total.do");
		}
		else {
			request.setAttribute("url", "item/insert.do");
			request.setAttribute("msg", "상품 등록에 실패했습니다.");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
		
	}

}
