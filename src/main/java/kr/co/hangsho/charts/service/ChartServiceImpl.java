package kr.co.hangsho.charts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.charts.mappers.ChartMapper;
import kr.co.hangsho.charts.vo.ProfitChart;
import kr.co.hangsho.web.criteria.CriteriaForChart;

@Service
public class ChartServiceImpl implements ChartService{

	@Autowired
	ChartMapper chartMapper;
	
	@Override
	public List<ProfitChart> getDailyChart(CriteriaForChart c) {
		System.out.println("service:" + c);
		return chartMapper.getDailyChart(c);
	}

	@Override
	public List<ProfitChart> getMonthChart(CriteriaForChart c) {
		return chartMapper.getMonthChart(c);
	}

}
