package kr.co.hangsho.privatedeal.service;

import java.util.List;

import kr.co.hangsho.privatedeal.vo.Privatedeal;
import kr.co.hangsho.web.criteria.Criteria;

public interface PrivatedealService {
	
	void addPDBoard(Privatedeal privatedeal);
	List<Privatedeal> getMeronaList(Criteria criteria);
	int getTotalRows(Criteria criteria);
	
	Privatedeal getMeronaByNo(int no);
}
