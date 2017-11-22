package kr.co.hangsho.charts.service;

import java.util.List;

import kr.co.hangsho.charts.vo.ProfitChart;
import kr.co.hangsho.web.criteria.CriteriaForChart;

public interface ChartService {
	
	List<ProfitChart> getDailyChart(CriteriaForChart c);
	List<ProfitChart> getMonthChart(CriteriaForChart c);
}
