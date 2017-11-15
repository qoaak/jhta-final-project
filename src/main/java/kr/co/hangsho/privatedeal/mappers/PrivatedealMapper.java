package kr.co.hangsho.privatedeal.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.privatedeal.vo.Privatedeal;

@Mapper
public interface PrivatedealMapper {
	
	void addPrivatedeal(Privatedeal privatedeal);
	List<Privatedeal> getMeronaList();
}
