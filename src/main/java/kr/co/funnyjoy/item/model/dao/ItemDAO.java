package kr.co.funnyjoy.item.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.funnyjoy.item.model.vo.Item;

public class ItemDAO {

	public int insertItem(SqlSession session, Item item) {
		int result = session.insert("ItemMapper.insertItem", item);
		return result;
	}

	public List<Item> selectItemList(SqlSession session, int currentPage) {
		int limit = 16;  // limit값은 한 페이지당 보여주고 싶은 게시물의 갯수
		int offset = (currentPage - 1) * limit;  // offset값은 시작값, 변하는 값
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<Item> itemList = session.selectList("ItemMapper.selectItemList", null, rowBounds); 
		return itemList;
	}

	public String generatePageNavi(SqlSession session, int currentPage) {
		// 전체 게시물 현재 16개
		// 1페이지 보여줄 상품 수 : 16개
		// 범위 갯수 (네비게이터 수) : 1개
		
//		int totalCount = 16;	// 전체 게시물의 갯수
		int totalCount = getTotalCount(session);  // 동적으로 가져와야 되는데;;  // select count(*) from ITEM_TBL 이거 쓰면 될거 같은데
		// 아니 왜 카운트 안세줌?? 왜 값이 없냐??
		
		int recordCountPerPage = 16;	// 한 페이지에 상품 몇개씩 보여 줄건지
		
		int naviTotalCount = 0;	// 넘길 페이지 갯수를 담을 변수
		if(totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage + 1;	// 총 상품이 한 페이지에 보여지는 상품갯수와 딱 떨어지지 않으면 넘길페이지 1개 추가
		}
		else {
			naviTotalCount = totalCount / recordCountPerPage;	// 넘길 페이지 갯수를 변수에 담음
		}
		
		int naviCountPerPage = 5;	// 넘길 페이지 갯수 몇개씩 보여줄 건지
		
		int startNavi = ((currentPage -1) / naviCountPerPage) * naviCountPerPage + 1;	// 넘길 페이지 시작 숫자 (1~5, 6~10, 11~15 에서 1, 6, 10 얘네들)
		int endNavi = startNavi + naviCountPerPage - 1;	// 넘길 페이지 마지막 숫자 (1~5, 6~10, 11~15 에서 5, 10, 15 얘네들)
		
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;  // 마지막 페이지가 총 넘길 페이지 갯수보다 크면 안되므로 마지막 페이지는 넘길 페이지 총 갯수로 정해줌
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
		for(int i = startNavi; i <= endNavi; i++) {	// 넘길 페이지 갯수를 페이지에 출력해 줌
			result.append("<a href='/item/best.do?currentPage=" + i + "'>" + i + "</a>&nbsp;&nbsp;");
		}
		if(needNext) {
			result.append("<a href='/item/best.do?currentPage=" + (endNavi + 1) + "'><img src='/resources/image/product/detail/btn_page_next.png' alt='다음'></a>");
		}
//		if(needNext) {
//			result.append("<a href='/item/best.do?currentPage=" + (endtNavi + 1)+ "'>[다음]</a> ");
//		}
		return result.toString();
	}

	public int getTotalCount(SqlSession session) {
		int totalCount = session.selectOne("ItemMapper.getTotalCount");
		return totalCount;
	}

}
