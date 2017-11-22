package kr.co.hangsho.categories.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.categories.mappers.CategoryMapper;
import kr.co.hangsho.categories.vo.SmallCategory;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	CategoryMapper categoryMapper;
	
	@Override
	public SmallCategory getCategory(int no) {
		return categoryMapper.getCategory(no);
	}

}
