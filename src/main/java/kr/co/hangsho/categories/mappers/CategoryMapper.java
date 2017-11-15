package kr.co.hangsho.categories.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.categories.vo.MiddleCategory;
import kr.co.hangsho.categories.vo.SmallCategory;

@Mapper
public interface CategoryMapper {

	SmallCategory getCategory(int productNo);
	List<MiddleCategory> getMidCategoryByNo(int bigNo);
	List<SmallCategory> getSmaCategoryByNo(int midNo);
}
