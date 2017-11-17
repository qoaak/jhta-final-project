package kr.co.hangsho.products.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.products.mappers.ProductQueMapper;
import kr.co.hangsho.products.vo.ProductQue;
import kr.co.hangsho.web.criteria.Criteria;

@Service
public class ProductQueServiceImpl implements ProductQueService {

	@Autowired
	ProductQueMapper productQueMapper;
	
	@Override
	public void addProductQue(ProductQue productQue) {
		int seq = productQueMapper.getSeq();
		productQue.setId(seq);
		
		productQueMapper.addProductQue(productQue);
	}
	
	@Override
	public List<ProductQue> getAllProductQues() {
		return productQueMapper.getProductQues();
	}
	
	@Override
	public ProductQue getProductQueContent(int id) {
		return productQueMapper.getProductQueById(id);
	}
	
}
