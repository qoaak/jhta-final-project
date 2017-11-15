package kr.co.hangsho.orders.vo;

import kr.co.hangsho.item.vo.Item;

public class OrderDetail {

	private Order order;
	private Item item;
	private int orderQuantity;
	
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	
	public int getOrderQuantity() {
		return orderQuantity;
	}
	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	
	@Override
	public String toString() {
		return "OrderDetail [order=" + order + ", item=" + item + ", orderQuantity=" + orderQuantity + "]";
	}
	
	
}
