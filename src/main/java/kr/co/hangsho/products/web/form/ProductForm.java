package kr.co.hangsho.products.web.form;

import org.springframework.web.multipart.MultipartFile;

public class ProductForm {

	private String name;
	private String bigCategory;
	private String middleCategory;
	private String smallCategory;
	private int deliveryFee;
	private String description;
	private int discountRatio;
	private MultipartFile imagefile;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBigCategory() {
		return bigCategory;
	}
	public void setBigCategory(String bigCategory) {
		this.bigCategory = bigCategory;
	}
	public String getMiddleCategory() {
		return middleCategory;
	}
	public void setMiddleCategory(String middleCategory) {
		this.middleCategory = middleCategory;
	}
	public String getSmallCategory() {
		return smallCategory;
	}
	public void setSmallCategory(String smallCategory) {
		this.smallCategory = smallCategory;
	}
	public int getDeliveryFee() {
		return deliveryFee;
	}
	public void setDeliveryFee(int deliveryFee) {
		this.deliveryFee = deliveryFee;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getDiscountRatio() {
		return discountRatio;
	}
	public void setDiscountRatio(int discountRatio) {
		this.discountRatio = discountRatio;
	}
	public MultipartFile getImagefile() {
		return imagefile;
	}
	public void setImagefile(MultipartFile imagefile) {
		this.imagefile = imagefile;
	}
	@Override
	public String toString() {
		return "ProductForm [name=" + name + ", bigCategory=" + bigCategory + ", middleCategory=" + middleCategory
				+ ", smallCategory=" + smallCategory + ", deliveryFee=" + deliveryFee + ", description=" + description
				+ ", discountRatio=" + discountRatio + ", imagefile=" + imagefile + "]";
	}
	
}
