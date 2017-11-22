package kr.co.hangsho.products.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import kr.co.hangsho.categories.service.MiddleCategoryService;
import kr.co.hangsho.categories.service.SmallCategoryService;
import kr.co.hangsho.categories.vo.MiddleCategory;
import kr.co.hangsho.categories.vo.SmallCategory;
import kr.co.hangsho.company.service.CompanyService;
import kr.co.hangsho.company.vo.Company;
import kr.co.hangsho.products.service.ProductService;
import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.web.criteria.Criteria;

@Controller
@RequestMapping("/product")
public class ProductAjaxController {

	@Autowired
	private MiddleCategoryService middleCategoryService;
	
	@Autowired
	private SmallCategoryService smallCategoryService;
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private ProductService productService;
	
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
	
	@RequestMapping("/getProducts.do")
	@ResponseBody
	public Map getProductListByCompanyId(String comUsername, Criteria criteria) {
		System.out.println(criteria);
		Company company = companyService.getCompanyByUserName(comUsername);
		int companyId = company.getId();
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		searchMap.put("criteria", criteria);
		searchMap.put("companyId", companyId);
		
		System.out.println(companyId);
		System.out.println(criteria);
		
		
		int totalRows= productService.getTotalRowsByCriteria(searchMap);
		criteria.setTotalRows(totalRows);
		
		List<Product> products = productService.getProductsByComId(searchMap);
		searchMap.remove("companyId");
		searchMap.put("products", products);
		
		return searchMap;
	}

	@RequestMapping("/delete.do")
	@ResponseBody
	public Map<String, Object> deleteProductByProductId(int productId, HttpSession httpSession, Criteria criteria) {
		productService.deleteProductByProductId(productId);
		
		Map<String, Object> loginInfo  = (Map) httpSession.getAttribute("LOGIN_INFO");
		Company company = (Company) loginInfo.get("LOGIN_USER");
		int companyId = company.getId();
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("criteria", criteria);
		searchMap.put("companyId", companyId);
		
		int totalRows= productService.getTotalRowsByCriteria(searchMap);
		criteria.setTotalRows(totalRows);
		
		List<Product> products = productService.getProductsByComId(searchMap);
		searchMap.remove("companyId");
		searchMap.put("products", products);
		System.out.println("searchMap is : " + searchMap);
		
		return searchMap;
	}
	
	@RequestMapping("/change.do")
	@ResponseBody
	public Map<String, Object> modifyProductById(int productId, HttpSession httpSession, Criteria criteria) {
		
		Product product = productService.getProductByProductId(productId);
		productService.modifyProduct(product);
		
		Map<String, Object> loginInfo  = (Map) httpSession.getAttribute("LOGIN_INFO");
		Company company = (Company) loginInfo.get("LOGIN_USER");
		int companyId = company.getId();
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("criteria", criteria);
		searchMap.put("companyId", companyId);
		
		int totalRows= productService.getTotalRowsByCriteria(searchMap);
		criteria.setTotalRows(totalRows);
		
		List<Product> products = productService.getProductsByComId(searchMap);
		searchMap.remove("companyId");
		searchMap.put("products", products);
		
		return searchMap;
	}
}
