package kr.co.hangsho.products.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.company.mappers.CompanyMapper;
import kr.co.hangsho.products.mappers.ProductMapper;
import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.web.criteria.Criteria;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public void addNewProduct(Product product) {
		int seq = productMapper.getSeq();
		product.setId(seq);
		
		productMapper.addProduct(product);
	}

	@Override
	public List<Product> getProductList(Criteria criteria) {
		return productMapper.getProductList(criteria);
	}

	@Override
	public Product getProductByProductNo(int productNo) {
		return productMapper.getProductByProductNo(productNo);
	}

	@Override
	public Product getProductDetail(int productNo) {
		return null;
	}

	
	
	
}
