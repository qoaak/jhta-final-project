package kr.co.hangsho.coupons.vo;

import java.util.Date;

import kr.co.hangsho.customers.vo.Customer;

public class Coupon {

	private int id;
	private boolean used;
	private int discountPrice;
	private Date expireDate;
	private Customer customerId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public boolean isUsed() {
		return used;
	}
	public void setUsed(boolean used) {
		this.used = used;
	}
	public int getDiscountPrice() {
		return discountPrice;
	}
	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}
	public Date getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}
	public Customer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Customer customerId) {
		this.customerId = customerId;
	}
	@Override
	public String toString() {
		return "Coupon [id=" + id + ", used=" + used + ", discountPrice=" + discountPrice + ", expireDate=" + expireDate
				+ ", customerId=" + customerId + "]";
	}
	
	
}