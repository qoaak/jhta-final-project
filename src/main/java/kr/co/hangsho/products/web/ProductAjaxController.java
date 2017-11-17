package kr.co.hangsho.products.web;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.hangsho.categories.service.MiddleCategoryService;
import kr.co.hangsho.categories.service.SmallCategoryService;
import kr.co.hangsho.categories.vo.MiddleCategory;
import kr.co.hangsho.categories.vo.SmallCategory;

@Controller
@RequestMapping("/product")
public class ProductAjaxController {

	@Autowired
	private MiddleCategoryService middleCategoryService;
	
	@Autowired
	private SmallCategoryService smallCategoryService;
	
	@RequestMapping("/getMidCate.do")
	@ResponseBody
	public List<MiddleCategory> getMidCategoryByBigCaNo(int bigCateNum) {
		List<MiddleCategory> middleCategories = middleCategoryService.getMidCategoryByBigNo(bigCateNum);
		return middleCategories;
	}
	
	@RequestMapping("/getSmaCate.do")
	@ResponseBody
	public List<SmallCategory> getsmaCategoryByMidCaNo(int midCateNum) {
		List<SmallCategory> smallCategories = smallCategoryService.getSmaCategoryByMidNo(midCateNum);
		return smallCategories;
	}

}
