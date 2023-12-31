package kr.co.funnyjoy.item.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.common.SqlSessionTemplate;
import kr.co.funnyjoy.item.model.dao.ItemDAO;
import kr.co.funnyjoy.item.model.vo.Item;
import kr.co.funnyjoy.item.model.vo.PageData;

public class ItemService {
	
	private ItemDAO iDao;
	
	public ItemService() {
		iDao = new ItemDAO();
	}

	public int insertItem(Item item) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = iDao.insertItem(session, item);
		if(result > 0) {
			session.commit();
		}
		else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public PageData selectItemList(int currentPage) {
		// Connection generate
		SqlSession session = SqlSessionTemplate.getSqlSession();
		// Call DAO
		List<Item> itemList = iDao.selectItemList(session, currentPage);
		String pageNavi = iDao.generatePageNavi(session, currentPage);
		PageData pd = new PageData(itemList, pageNavi);
		session.close();
		// return list
		return pd;
	}

	public int totalCount() {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int totalCount = iDao.getTotalCount(session);
		return totalCount;
	}
}
