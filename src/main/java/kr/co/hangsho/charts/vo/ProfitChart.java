package kr.co.hangsho.charts.vo;

public class ProfitChart {
	
	private int tm;
	private int profit;
	private int qty;
	
	public int getTm() {
		return tm;
	}
	public void setTm(int tm) {
		this.tm = tm;
	}
	public int getProfit() {
		return profit;
	}
	public void setProfit(int profit) {
		this.profit = profit;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	@Override
	public String toString() {
		return "DailyChart [tm=" + tm + ", profit=" + profit + ", qty=" + qty + "]";
	}
	
	
}
