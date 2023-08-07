package kr.co.funnyjoy.item.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.funnyjoy.item.model.vo.Item;

public class ItemDAO {

	public List<Item> selectItemList(SqlSession session, int currentPage) {
		int limit = 16;
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Item> itemList = session.selectList("ItemMapper.selectItemList", null, rowBounds); 
		return itemList;
	}

	public String generatePageNavi(SqlSession session, int currentPage) {
		// 전체 게시물 현재 16개
		// 1페이지 보여줄 상품 수 : 16개
		// 범위 갯수 (네비게이터 수) : 1개
		int totalCount = 16;
//		int totalCount = Integer.parseInt(session.selectOne(String.valueOf("ItemMapper.selectItemListCount")));  // 동적으로 가져와야 되는데;;  // select count(*) from ITEM_TBL 이거 쓰면 될거 같은데
		// 아니 왜 카운트 안세줌?? 왜 값이 없냐??
		int recordCountPerPage = 16;
		int naviTotalCount = 0;
		if(totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage + 1;
		}
		else {
			naviTotalCount = totalCount / recordCountPerPage; 
		}
		int naviCountPerPage = 5;  // 넘길 페이지 갯수 몇개씩 보여줄 건지
		int startNavi = ((currentPage -1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		boolean needPrev = true;
		boolean needNext = true;
		
		if(startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == naviTotalCount) {
			needNext = false;
		}
		
		StringBuilder result = new StringBuilder();
//		if(needPrev) {
//			result.append("<a href='/item/best.do?currentPage=" + (startNavi-1)+ "'>[이전]</a> ");
//		}
		if(needPrev) {
			result.append("<a href='/item/best.do?currentPage=" + (startNavi - 1) + "'><img src='/resources/image/product/detail/btn_page_prev.png' alt='이전'></a>");
		}
		for(int i = startNavi; i <= endNavi; i++) {
			result.append("<a href='/item/best.do?currentPage=" + i + "'>" + i + "</a>&nbsp;&nbsp;");
		}
		if(needNext) {
			result.append("<a href='/item/best.do?currentPage=" + (startNavi - 1) + "'><img src='/resources/image/product/detail/btn_page_next.png' alt='다음'></a>");
		}
//		if(needPrev) {
//			result.append("<a href='/item/best.do?currentPage=" + (startNavi-1)+ "'>[이전]</a> ");
//		}
		return result.toString();
	}

}
