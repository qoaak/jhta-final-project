package kr.co.hangsho.products.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.co.hangsho.categories.vo.SmallCategory;
import kr.co.hangsho.company.vo.Company;
import kr.co.hangsho.images.service.ImageService;
import kr.co.hangsho.images.vo.Image;
import kr.co.hangsho.products.service.ProductService;
import kr.co.hangsho.products.vo.Product;
import kr.co.hangsho.products.web.form.ProductForm;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Value("${images.upload.directory.prefix}")
	String uploadDirectoryPrefix;
	
	@Resource(name="imagePathMap")
	Map<String, String> imagePathMap;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ImageService imageService;
	
	@RequestMapping("/form.do")
	public String form() {
		return "/products/register";
	}
	
	@RequestMapping("/add.do")
	public String add(ProductForm productsForm, HttpSession httpSession) throws IOException {
		
		Product products = new Product();
		BeanUtils.copyProperties(productsForm, products);
		
		SmallCategory smallCategory = new SmallCategory();
		smallCategory.setId(productsForm.getSmallCategory());
		products.setSmallCategory(smallCategory);
		
		MultipartFile imageFile = productsForm.getImagefile();
		String filename = imageFile.getOriginalFilename();
		
		String imagePath = imagePathMap.get(String.valueOf(smallCategory.getId())) + filename;
		String savePath = uploadDirectoryPrefix +  imagePath;
		
		Image image = new Image();
		image.setPath(imagePath);
		products.setImage(image);
		
		Map<String, Object> loginInfo = (Map) httpSession.getAttribute("LOGIN_INFO");
		
		Company company = (Company) loginInfo.get("LOGIN_USER");
		products.setCompany(company);
		
		FileCopyUtils.copy(imageFile.getBytes(), new FileOutputStream(savePath));
		
		productService.addNewProduct(products);
		
		
		return "redirect:list.do";
	}

	@RequestMapping("/list.do")
	public String productList(HttpSession httpSession, Model model) {
		
		Map<String, Object> loginInfo = (Map) httpSession.getAttribute("LOGIN_INFO");
		
		Company company = (Company) loginInfo.get("LOGIN_USER");
		int companyNo = company.getId();
		List<Product> products = productService.getProductsByComId(companyNo);
		
		model.addAttribute("products", products);
		
		return "/products/list";
	}
	
	/*@RequestMapping("/detail.do")
	public String detail(int productNo, Model model) {
		Product product = productService.getProductByProductNo(productNo);
		model.addAttribute("product", product);
		
		return "/products/";
	}*/
}
