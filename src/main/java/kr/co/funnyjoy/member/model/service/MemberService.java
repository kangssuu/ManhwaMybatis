package kr.co.funnyjoy.member.model.service;

import org.apache.ibatis.session.SqlSession;

import kr.co.common.SqlSessionTemplate;
import kr.co.funnyjoy.member.model.dao.MemberDAO;
import kr.co.funnyjoy.member.model.vo.Member;

public class MemberService {
	private MemberDAO mDao;
	
	public MemberService() {
		mDao = new MemberDAO();
	}

	public int insertMember(Member member) {  // 회원가입 정보를 테이블에 저장하기
		// 연결생성
		SqlSession session = SqlSessionTemplate.getSqlSession();
		// DAO 호출
		int result = mDao.insertMember(session, member);
		// 커밋/롤백
		if(result > 0) {
			session.commit();
		}
		else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public Member selectCheckLogin(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member mOne = mDao.selectCheckLogin(session, member);
		session.close();
		return mOne;
	}

	public int updateMember(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = mDao.updateMember(session, member);
		if(result > 0) {
			session.commit();
		}
		else {
			session.rollback();
		}
		session.close();
		return result;
	}
}
