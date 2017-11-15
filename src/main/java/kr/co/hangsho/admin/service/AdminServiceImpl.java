package kr.co.hangsho.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.categories.mappers.CategoryMapper;
import kr.co.hangsho.categories.vo.SmallCategory;
import kr.co.hangsho.products.mappers.ProductMapper;
import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.web.criteria.Criteria;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	ProductMapper productMapper;
	
	@Autowired
	CategoryMapper categoryMapper;
	
	@Override
	public List<Product> getProducts(Criteria criteria) {
		List<Product> products = productMapper.getProductsForAdmin(criteria);
		
		for(Product product : products) {
			SmallCategory category =  categoryMapper.getCategory(product.getSmallCategory().getId());
			product.setSmallCategory(category);
		}
		
		return products;
	}
	

}
