package kr.co.hangsho.item.web.form;

import org.springframework.web.multipart.MultipartFile;

public class ItemForm {

	private int smallCategory;
	private String product;
	private int originalPrice;
	private int salePrice;
	private int initialQuantity;
	private MultipartFile imagefile;
	
	public int getSmallCategory() {
		return smallCategory;
	}
	public void setSmallCategory(int smallCategory) {
		this.smallCategory = smallCategory;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(int originalPrice) {
		this.originalPrice = originalPrice;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public int getInitialQuantity() {
		return initialQuantity;
	}
	public void setInitialQuantity(int initialQuantity) {
		this.initialQuantity = initialQuantity;
	}
	public MultipartFile getImagefile() {
		return imagefile;
	}
	public void setImagefile(MultipartFile imagefile) {
		this.imagefile = imagefile;
	}
	@Override
	public String toString() {
		return "ItemForm [smallCategory=" + smallCategory + ", product=" + product + ", originalPrice=" + originalPrice
				+ ", salePrice=" + salePrice + ", initialQuantity=" + initialQuantity + ", imagefile=" + imagefile
				+ "]";
	}
}
