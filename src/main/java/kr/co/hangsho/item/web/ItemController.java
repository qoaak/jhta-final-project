package kr.co.hangsho.item.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import kr.co.hangsho.images.vo.Image;
import kr.co.hangsho.item.service.ItemService;
import kr.co.hangsho.item.vo.Item;
import kr.co.hangsho.item.web.form.ItemForm;
import kr.co.hangsho.products.vo.Product;

@Controller
@RequestMapping("/item")
public class ItemController {

	@Value("${images.upload.directory.prefix}")
	String uploadDrectoryPrefix;
	
	@Resource(name="imagePathMap")
	Map<String, String> imagePathMap;
	
	@Autowired
	private ItemService itemService;
	
	@RequestMapping("/form.do")
	public String form() {
		return "/item/register";
	}
	
	@RequestMapping("/add.do")
	public String add(ItemForm itemForm) throws IOException {
		
		Item item = new Item();
		BeanUtils.copyProperties(itemForm, item);
		System.out.println("itemForm : " + itemForm);
		
		Product product = new Product();
		product.setName(itemForm.getProduct());
		System.out.println(product);
		
		MultipartFile imageFile = itemForm.getImagefile();
		String filename = imageFile.getOriginalFilename();
		System.out.println(filename);
		String imagePath = imagePathMap.get(String.valueOf(product.getId())) + filename;
		String savePath = uploadDrectoryPrefix +  imagePath;
		
		Image image = new Image();
		image.setPath(imagePath);
		item.setImage(image);
		
		FileCopyUtils.copy(imageFile.getBytes(), new FileOutputStream(savePath));
		
		itemService.addNewItem(item);
		
		return "redirect:../product/list.do";
	}
	
}
