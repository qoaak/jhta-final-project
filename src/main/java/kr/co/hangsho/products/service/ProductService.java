package kr.co.hangsho.products.service;

import java.util.List;
import java.util.Map;

import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.web.criteria.Criteria;

public interface ProductService {

	void addNewProduct(Product product);
	List<Product> getProductList(Criteria criteria);
	Product getProductByProductNo(int productNo);
	Product getProductDetail(int productNo);
	
	int getTotalRowsByCriteria(Map<String, Object> map);
	
	List<Product> getProductsByComId(Map<String, Object> map);
	List<Product> getProductsNameBySmaCateNo(int smaCateNo);
}
