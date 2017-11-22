package kr.co.hangsho.admin.web;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.charts.service.ChartService;
import kr.co.hangsho.charts.vo.ProfitChart;
import kr.co.hangsho.web.criteria.CriteriaForChart;

@Controller
@RequestMapping("/admin")
public class AdminAjaxController {

	@Autowired
	ChartService chartService;
	
	@RequestMapping("getprodaily.do")
	@ResponseBody
	public List<ProfitChart> getDailyChart(int itemId, String selectDate) {
		
		System.out.println(itemId);
		System.out.println(selectDate);
		CriteriaForChart c = new CriteriaForChart();
		c.setItemId(itemId);
		c.setSelectDate(selectDate);
		
		return chartService.getDailyChart(c);
	}
	
	@RequestMapping("getpromonth.do")
	@ResponseBody
	public List<ProfitChart> getMonthChart(CriteriaForChart c) {
		return chartService.getMonthChart(c);
	}
		
}
