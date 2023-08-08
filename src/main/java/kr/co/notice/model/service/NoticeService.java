package kr.co.notice.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.common.SqlSessionTemplate;
import kr.co.notice.model.dao.NoticeDAO;
import kr.co.notice.model.vo.Notice;
import kr.co.notice.model.vo.PageData;

public class NoticeService {
	
	private NoticeDAO nDao;
	
	public NoticeService() {
		nDao = new NoticeDAO();
	}
	
	public int insertNotice(Notice notice) {
		SqlSession session = SqlSessionTemplate.getSqlSession();  // mybatis쓸 때 사용하기 위해 프로그램이 지원하는 jdbcTemplate임.
		int result = nDao.insertNotice(session, notice);
		if(result > 0) {
			session.commit();
		}
		else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateNotice(Notice notice) {
		SqlSession session = SqlSessionTemplate.getSqlSession();  // mybatis쓸 때 사용하기 위해 프로그램이 지원하는 jdbcTemplate임.
		int result = nDao.updateNotice(session, notice);
		if(result > 0) {
			// 성공시 커밋
			session.commit();
		}
		else {
			// 실패시 롤백
			session.rollback();
		}
		// 연결해제
		session.close();
		return result; // 리턴은 0이나 널로 두지 않음. 0 -> result, null -> notice, nList
	}

	public int deleteNotice(int noticeNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = nDao.deleteNotice(session, noticeNo);
		if(result > 0) {
			// 성공시 커밋
			session.commit();
		}
		else {
			// 실패시 롤백
			session.rollback();
		}
		session.close();
		return result;
	}

	public PageData selectNoticeList(int currentPage) {
		// 서비스는 DAO, mapper, xml 순으로 코딩
		// 서비스는 연결생성, DAO호출, 연결해제
		SqlSession session = SqlSessionTemplate.getSqlSession();  // 연결
		List<Notice> nList = nDao.selectNoticeList(session, currentPage);  // DAO호출
		String pageNavi = nDao.generatePageNavi(session, currentPage);
		PageData pd = new PageData(nList, pageNavi);
		session.close();  // 연결해제
		return pd;
	}

	public Notice selectOneById(int noticeNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Notice notice = nDao.selectOneById(session, noticeNo);
		session.close();
		return notice;
	}

	public Notice selectOneByNo(int noticeNo) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Notice notice = nDao.selectOneById(session, noticeNo);
		session.close();
		return notice;
	}

}
