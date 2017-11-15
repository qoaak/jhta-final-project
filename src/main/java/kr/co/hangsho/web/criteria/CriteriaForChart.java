package kr.co.hangsho.web.criteria;

import java.util.Date;

public class CriteriaForChart {
	
	private int itemId;
	private Date selectDate;
	
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public Date getSelectDate() {
		return selectDate;
	}
	public void setSelectDate(Date selectDate) {
		this.selectDate = selectDate;
	}
	@Override
	public String toString() {
		return "CriteriaForChart [itemId=" + itemId + ", selectDate=" + selectDate + "]";
	}
	
	
}
