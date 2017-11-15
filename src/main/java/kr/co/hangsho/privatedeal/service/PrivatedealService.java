package kr.co.hangsho.privatedeal.service;

import java.util.List;

import kr.co.hangsho.privatedeal.vo.Privatedeal;

public interface PrivatedealService {
	
	void addPDBoard(Privatedeal privatedeal);
	List<Privatedeal> getMeronaList();
}
