package kr.co.hangsho.charts.mappers;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.charts.vo.DailyChart;
import kr.co.hangsho.web.criteria.CriteriaForChart;

@Mapper
public interface ChartMapper {
	
	DailyChart getDailyChart(CriteriaForChart c);

}
