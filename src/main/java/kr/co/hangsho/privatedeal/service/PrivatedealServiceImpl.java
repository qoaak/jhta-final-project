package kr.co.hangsho.privatedeal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.privatedeal.mappers.PrivatedealMapper;
import kr.co.hangsho.privatedeal.vo.Privatedeal;

@Service
public class PrivatedealServiceImpl implements PrivatedealService {
	
	@Autowired
	PrivatedealMapper privatedealMapper;

	@Override
	public void addPDBoard(Privatedeal privatedeal) {
		privatedealMapper.addPrivatedeal(privatedeal);
	}	
	
}
