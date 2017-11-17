package kr.co.hangsho.privatedeal.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.privatedeal.vo.Privatedeal;
import kr.co.hangsho.web.criteria.Criteria;

@Mapper
public interface PrivatedealMapper {
	
	void addPrivatedeal(Privatedeal privatedeal);
	List<Privatedeal> getPrivateDeals(Criteria criteria);
	int getTotalRows(Criteria criteria);
	
	Privatedeal getBoardByNo(int no);
}
