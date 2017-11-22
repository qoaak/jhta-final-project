package kr.co.hangsho.admin.service;

import java.util.List;

import kr.co.hangsho.item.vo.Item;
import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.web.criteria.Criteria;

public interface AdminService {
	
	List<Product> getProducts(Criteria criteria);		// 관리자용 프로덕트 리스트
	List<Item> getItems(Criteria criteria);
	List<Product> getProductList(Criteria criteria);		// product_show = 'Y'
}
