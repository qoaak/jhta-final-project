package kr.co.hangsho.privatedeal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.privatedeal.mappers.PrivatedealMapper;
import kr.co.hangsho.privatedeal.vo.Privatedeal;
import kr.co.hangsho.web.criteria.Criteria;

@Service
public class PrivatedealServiceImpl implements PrivatedealService {
	
	@Autowired
	PrivatedealMapper privatedealMapper;

	@Override
	public void addPDBoard(Privatedeal privatedeal) {
		privatedealMapper.addPrivatedeal(privatedeal);
	}

	@Override
	public List<Privatedeal> getMeronaList(Criteria criteria) {
		
		return privatedealMapper.getPrivateDeals(criteria);		
	}

	@Override
	public int getTotalRows(Criteria criteria) {
		return privatedealMapper.getTotalRows(criteria);
	}

	@Override
	public Privatedeal getMeronaByNo(int no) {		
		return privatedealMapper.getBoardByNo(no);
	}	
	
}
