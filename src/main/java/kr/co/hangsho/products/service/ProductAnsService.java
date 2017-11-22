package kr.co.hangsho.products.service;

import java.util.List;

import kr.co.hangsho.products.vo.ProductAns;
import kr.co.hangsho.web.criteria.Criteria;

public interface ProductAnsService {

	void addProductAns(ProductAns productAns);
	List<ProductAns> getAllProductAns();
	ProductAns getProductAnsByProQueId(int id);
	
	// 페이징 처리
	int getTotalRows(Criteria criteria);
	List<ProductAns> getProductAnss(Criteria criteria);
	
}
