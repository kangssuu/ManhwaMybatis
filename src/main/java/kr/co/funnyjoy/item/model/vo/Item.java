package kr.co.funnyjoy.item.model.vo;

public class Item {
	private int itemNo;
	private String itemName;
	private String itemImageName;
	private String itemImagePath;
	private String itemPublisher;
	private int itemPrice;
	private int reviewCount;
	
	public int getItemNo() {
		return itemNo;
	}

	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemImageName() {
		return itemImageName;
	}

	public void setItemImageName(String itemImageName) {
		this.itemImageName = itemImageName;
	}

	public String getItemImagePath() {
		return itemImagePath;
	}

	public void setItemImagePath(String itemImagePath) {
		this.itemImagePath = itemImagePath;
	}

	public String getItemPublisher() {
		return itemPublisher;
	}

	public void setItemPublisher(String itemPublisher) {
		this.itemPublisher = itemPublisher;
	}

	public int getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}

	@Override
	public String toString() {
		return "상품 [상품번호=" + itemNo + ", 상품이름=" + itemName + ", 이미지=" + itemImageName
				+ ", 이미지경로=" + itemImagePath + ", 출판사=" + itemPublisher + ", 상품가격=" + itemPrice
				+ ", 리뷰수=" + reviewCount + "]";
	}

}

