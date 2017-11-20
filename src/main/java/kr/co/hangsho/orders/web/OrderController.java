package kr.co.hangsho.orders.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.coupons.service.CouponService;
import kr.co.hangsho.coupons.vo.Coupon;
import kr.co.hangsho.customers.services.CustomerService;
import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.images.service.ImageService;
import kr.co.hangsho.images.vo.Image;
import kr.co.hangsho.item.service.ItemService;
import kr.co.hangsho.item.vo.Item;
import kr.co.hangsho.orders.service.OrderService;
import kr.co.hangsho.orders.vo.Order;
import kr.co.hangsho.products.service.ProductService;
import kr.co.hangsho.products.vo.Product;


@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private ProductService productService;
	@Autowired
	private ItemService itemService;
	@Autowired
	private ImageService imageService;
	@Autowired
	private CouponService couponService;

	
	
	@RequestMapping("/orderPage.do")
	public String orderPage(Model model) {
		
		Customer customer = new Customer();
		customer.setId(8);
		model.addAttribute("customer", customerService.getCustomerByNo(customer.getId()));
		
		Product product = new Product();
		product.setId(1);
		
		Item item = new Item();
		item.setId(1);
		item = itemService.getItemByProductNo(item.getId());
		item.setProduct(productService.getProductByProductNo(product.getId()));
		model.addAttribute("itemDetail", item);
		
		Image image = new Image();
		image.setId(11);
		model.addAttribute("image", imageService.getImageByNo(image.getId()));
		
		model.addAttribute("coupons", couponService.getCouponListByCustomerId(customer.getId()));
		
		model.addAttribute("couponCount", couponService.couponCountByCustomerId(customer.getId()));
		
		
		return "/order";
	}
	
	@RequestMapping("/addOrder.do")
	public String addOrder(String name, String phonenumber, String address, String memo, int deliveryId) {
		
		Order order = new Order();
		
		
		
		//Delivery address1 = xxxService.getDeliveryById(deliveryId);
		
		
		
		
		order.setCondition("배송대기");
		//order.setCustomer(customer);
		//order.setDelivery(address1);
		
		return null;
	}
	
	
}
