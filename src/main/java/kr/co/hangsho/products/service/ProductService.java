package kr.co.hangsho.products.service;

import java.util.List;

import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.web.criteria.Criteria;

public interface ProductService {

	void addNewProduct(Product product);
	List<Product> getProductList(Criteria criteria);
	Product getProductByProductNo(int productNo);
	Product getProductDetail(int productNo);
	
}
