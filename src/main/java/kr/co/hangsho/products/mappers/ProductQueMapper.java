package kr.co.hangsho.products.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.products.vo.ProductQue;
import kr.co.hangsho.web.criteria.Criteria;

@Mapper
public interface ProductQueMapper {

	int getSeq();
	void addProductQue(ProductQue productQue);
	List<ProductQue> getProductQues();
	ProductQue getProductQueById(int id);
}
