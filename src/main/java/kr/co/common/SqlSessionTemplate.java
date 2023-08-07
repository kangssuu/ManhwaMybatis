package kr.co.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionTemplate {
	
	// jdbcTemplate 만들기 (오라클db와 연결하기 위함)
	public static SqlSession getSqlSession() {  // mybatis-config.xml과 연결할 메소드
		String resource = "mybatis-config.xml";
		SqlSession session = null;
		
		try {
			InputStream is = Resources.getResourceAsStream(resource);
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();  // 연결공장을 만드는 사람
			SqlSessionFactory factory = builder.build(is);  // 연결공장을 만드는 사람이 만든 연결공장
			session = factory.openSession();  // 연결공장이 만든 연결
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return session;
	}
}
