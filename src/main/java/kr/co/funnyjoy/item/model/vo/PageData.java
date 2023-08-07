package kr.co.funnyjoy.item.model.vo;

import java.util.List;

public class PageData {
	private List<Item> itemList;
	private String pageNavi;
	
	
	public PageData(List<Item> itemList, String pageNavi) {
		super();
		this.itemList = itemList;
		this.pageNavi = pageNavi;
	}


	public List<Item> getItemList() {
		return itemList;
	}


	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}


	public String getPageNavi() {
		return pageNavi;
	}


	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}


	@Override
	public String toString() {
		return "PageData [itemList=" + itemList + ", pageNavi=" + pageNavi + "]";
	}
	
}
