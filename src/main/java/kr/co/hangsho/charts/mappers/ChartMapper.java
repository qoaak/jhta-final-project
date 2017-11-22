package kr.co.hangsho.charts.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.charts.vo.ProfitChart;
import kr.co.hangsho.web.criteria.CriteriaForChart;

@Mapper
public interface ChartMapper {
	
	List<ProfitChart> getDailyChart(CriteriaForChart c);
	List<ProfitChart> getMonthChart(CriteriaForChart c);

}
