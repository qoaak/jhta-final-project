package kr.co.hangsho.products.service;

import java.util.List;

import kr.co.hangsho.products.vo.ProductQue;
import kr.co.hangsho.web.criteria.Criteria;

public interface ProductQueService {

	void addProductQue(ProductQue productQue);
	List<ProductQue> getAllProductQues();
	ProductQue getProductQueContent(int id);
	
	List<ProductQue> getProductQuess(Criteria criteria);
	int getTotalRows(Criteria criteria);
}
