package kr.co.hangsho.item.web.form;

import org.springframework.web.multipart.MultipartFile;

public class ItemForm {

	private String smallCategory;
	private String productName;
	private int originprice;
	private int saleprice;
	private int initialquantity;
	private MultipartFile attachedImg;
	
	public String getSmallCategory() {
		return smallCategory;
	}
	public void setSmallCategory(String smallCategory) {
		this.smallCategory = smallCategory;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getOriginprice() {
		return originprice;
	}
	public void setOriginprice(int originprice) {
		this.originprice = originprice;
	}
	public int getSaleprice() {
		return saleprice;
	}
	public void setSaleprice(int saleprice) {
		this.saleprice = saleprice;
	}
	public int getInitialquantity() {
		return initialquantity;
	}
	public void setInitialquantity(int initialquantity) {
		this.initialquantity = initialquantity;
	}
	public MultipartFile getAttachedImg() {
		return attachedImg;
	}
	public void setAttachedImg(MultipartFile attachedImg) {
		this.attachedImg = attachedImg;
	}
	@Override
	public String toString() {
		return "ItemForm [smallCategory=" + smallCategory + ", productName=" + productName + ", originprice="
				+ originprice + ", saleprice=" + saleprice + ", initialquantity=" + initialquantity + ", imagefile="
				+ attachedImg + "]";
	}
	
}
