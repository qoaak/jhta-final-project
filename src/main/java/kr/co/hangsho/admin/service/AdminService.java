package kr.co.hangsho.admin.service;

import java.util.List;

import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.web.criteria.Criteria;

public interface AdminService {
	
	List<Product> getProducts(Criteria criteria);
}
