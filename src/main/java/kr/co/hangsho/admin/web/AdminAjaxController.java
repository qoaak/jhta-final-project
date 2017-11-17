package kr.co.hangsho.admin.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.hangsho.charts.mappers.ChartMapper;
import kr.co.hangsho.charts.vo.DailyChart;
import kr.co.hangsho.web.criteria.CriteriaForChart;

@Controller
@RequestMapping("/admin")
public class AdminAjaxController {

	@Autowired
	ChartMapper chartMapper;
	
	@RequestMapping("getDaily.do")
	@ResponseBody
	public DailyChart getDailyChart(int itemId, String selectDate) {
		System.out.println(itemId);
		System.out.println(selectDate);
		CriteriaForChart c = new CriteriaForChart();
		c.setItemId(itemId);
		c.setSelectDate(selectDate);
		
		return chartMapper.getDailyChart(c);
	}
	
	
		
}
