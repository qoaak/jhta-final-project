package kr.co.hangsho.orders.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.customers.services.CustomerService;
import kr.co.hangsho.customers.vo.Customer;
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

	@RequestMapping("/orderPage.do")
	public String orderPage(Model model) {
		
		Customer customer = new Customer();
		customer.setId(8);
		model.addAttribute("getCustomerByNo", customerService.getCustomerByNo(customer.getId()));
		
		
		
		Product product = new Product();
		product.setId(1);
		model.addAttribute("productByNo", productService.getProductByProductNo(product.getId()));
		
		Item item = new Item();
		item.setId(1);
		model.addAttribute("itemDetail", itemService.getItemByProductNo(item.getId()));
		//List<> aa =  xxxService.getDeliveryByUserId();
		//model.addAttribute("aa", aa);

//		model.addAttribute("orders", orderService.getAllOrders());
		
		
		
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
