package kr.co.hangsho.privatedeal.merona.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hangsho.categories.service.MiddleCategoryService;
import kr.co.hangsho.categories.service.SmallCategoryService;
import kr.co.hangsho.privatedeal.service.PrivatedealService;
import kr.co.hangsho.privatedeal.vo.Privatedeal;
import kr.co.hangsho.web.criteria.Criteria;

@Controller
@RequestMapping("/merona")
public class MeronaController {
	
	@Autowired
	PrivatedealService privatedealService;
	
	@Autowired
	MiddleCategoryService middleCategoryService;
	@Autowired
	SmallCategoryService smallCategoryService;
	
	@RequestMapping("/index.do")
	public String home(Criteria criteria, Model model) {
		
		int totalRows = privatedealService.getTotalRows(criteria);
		criteria.setTotalRows(totalRows);
		
		List<Privatedeal> meronaList = privatedealService.getMeronaList(criteria);
		
		if (criteria.getBc() != null) {
			model.addAttribute("middleCategories", middleCategoryService.getMidCategoryByBigNo(criteria.getBc()));			
		}
		if (criteria.getMc() != null) {
			model.addAttribute("smallCategories", smallCategoryService.getSmaCategoryByMidNo(criteria.getMc()));			
		}
		
		model.addAttribute("navi", criteria);
		model.addAttribute("meronalist", meronaList);
		
		return "/privatedeal/merona/index";
	}
	
	@RequestMapping("/detail.do")
	public String detail(int no, Model model) {
						
		model.addAttribute("merona", privatedealService.getMeronaByNo(no));
		
		return "/privatedeal/merona/detail";
	}
	
}