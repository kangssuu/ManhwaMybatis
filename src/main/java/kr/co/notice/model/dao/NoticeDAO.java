package kr.co.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import kr.co.notice.model.vo.Notice;

public class NoticeDAO {

	public int insertNotice(SqlSession session, Notice notice) {
		// JDBC랑 다르게 1줄이면 코드 끝
		// insert를 할거면 session에서 insert()메소드 호출 후
		// mapper.xml의 name값(NoticeMapper)과 쿼리문의 id값(insertNotice)을 호출
		// 한 줄 쓰고 끝나는게 아니라 notice-mapper.xml을 만들고 태그를 이용해서 쿼리문 작성해주고
		// mapper.xml을 사용한다고 mybatis-config.xml에 신고/등록 해야함
		int result = session.insert("NoticeMapper.insertNotice", notice);
		return result;
	}
	
	public int deleteNotice(SqlSession session, int noticeNo) {
		int result = session.delete("NoticeMapper.deleteNotice", noticeNo);
		return result;
	}

	public List<Notice> selectNoticeList(SqlSession session, int currentPage) {
		// JDBC랑 다르게 1줄이면 코드 끝
		// select할 거면 session에서 selectList, selectOne메소드 중에서 필요에 맞게 호출하기
		// mapper.xml의 name값(NoticeMapper)과 쿼리문의 id값(selectNoticeList)을 호출
		// 즉, 넘겨주는 값(매개변수)은 없으므로 name.id값만 selectList() 메소드의 전달값으로 넘겨줌
		// select이기 때문에 mapper.xml에서는 rsetToNotice에 해당하는 ResultMap을 작성해 줘야함!!
		
		/*
		 * RowBounds는 왜 쓰나요? 쿼리문을 변경하지 않고도 페이징을 처리할 수 있게 해주는 클래스
		 * RowBounds의 동작은 offset값과 limit값을 이용해서 동작함
		 * limit값은 한 페이지당 보여주고 싶은 게시물의 갯수
		 * offset값은 시작값, 변하는 값
		 * 1페이지에서는 0 * 10부터 시작해서 10개를 가져오고 1 ~ 10
		 * 2페이지에서는 1 * 10부터 시작해서 ... 			11 ~ 20
		 * 3페이지에서는 2 * 10부터 시작해서 ...			21 ~ 30
		 */
		int limit = 10;
		int offset = (currentPage - 1) * limit;
		RowBounds rowBounds = new RowBounds(offset, limit);  // RowBounds => 행을 몇개씩 잡아주겠다는 ? 의미(행에 바운더리를 걸친다)
		
		List<Notice> nList = session.selectList("NoticeMapper.selectNoticeList", null, rowBounds);  // 세번째 자리가 rowBounds자리임. 두번째는 매개변수? 자리
		return nList;
	}
	
	
	public String generatePageNavi(SqlSession session, int currentPage) {
		// 전체 게시물의 갯수 : 37
		// 1페이지 보여줄 게시물 수 : 10
		// 범위의 갯수 (네비게이터의 수) : ?  => 4
		
		// 전체 게시물의 갯수는 : 55
		// 1페이지 보여줄 게시물 수 : 10
		// 범위의 갯수 (네비게이터의 수) : ?  => 6
		
		// 전체 게시물의 갯수는 : 76
		// 1페이지 보여줄 게시물 수 : 10
		// 범위의 갯수 (네비게이터의 수) : ?  => 8
//		int totalCount = 205;  // 전체 게시물의 갯수를 동적으로 가지고 와야 함.
		int totalCount = getTotalCount(session);
		int recordCountPerPage = 10;
		int naviTotalCount = 0;
		if (totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage + 1;
		}
		else {
			naviTotalCount = totalCount / recordCountPerPage;
		}
		int naviCountPerPage = 10;  // 넘길 페이지 몇개까지 보여줄지 정함
		// currentPage		startNavi		endNavi
		// 1,2,3,4,5			1				5
		// 6,7,8,9,10			6				10
		// 11,12,13,14,15		11				15
		// 16,17,18,19,20		16				20
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;  // currentPage에 따라 바뀌어야 함
		int endNavi = startNavi + naviCountPerPage - 1;
		// endNavi값이 총 범위의 갯수보다 더 커지는 것을 막아주는 코드
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		boolean needPrev = true;
		boolean needNext = true;
		if (startNavi == 1) {
			needPrev = false;
		}
		if (endNavi == naviTotalCount) {
			needNext = false;
		}
		// String result = "";
		StringBuilder result = new StringBuilder();
		if(needPrev) {
			result.append("<a href='/notice/list.do?currentPage=" + (startNavi-1)+ "'>[이전]</a> ");
		}
		for(int i = startNavi; i <= endNavi; i++) {
//			result += "<a href=\"#\">1</a>;
			result.append("<a href='/notice/list.do?currentPage="+i+"'>"+i+"</a>&nbsp;&nbsp;");  // &nbsp; => 띄어쓰기 // "<a href=\"/notice/list.do?currentPage=i\">"+i+"</a>"     \" => "를 문자열로 쓴다
		}
		if(needNext) {
			result.append("<a href='/notice/list.do?currentPage=" + (endNavi + 1) + "'>[다음]</a>");
		}
		return result.toString();
	}
	
	

	public Notice selectOneById(SqlSession session, int noticeNo) {
		Notice notice = session.selectOne("NoticeMapper.selectOneByNo", noticeNo);
		return notice;
	}

	public int updateNotice(SqlSession session, Notice notice) {
		int result = session.update("NoticeMapper.updateNotice", notice);
		return result;
	}

	private int getTotalCount(SqlSession session) {
		int totalCount = session.selectOne("NoticeMapper.getTotalCount");
		return totalCount;
	}

}
