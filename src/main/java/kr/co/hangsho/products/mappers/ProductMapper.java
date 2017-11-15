package kr.co.hangsho.products.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.web.criteria.Criteria;

@Mapper
public interface ProductMapper {

	int getSeq();
	void addProduct(Product product);
	List<Product> getProductList(Criteria criteria);
	Product getProductByProductNo(int productNo);
	
	List<Product> getProductsForAdmin(Criteria criteria);
	
	List<Product> getProductsForCompany();
}
