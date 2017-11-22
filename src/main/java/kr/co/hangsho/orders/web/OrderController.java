package kr.co.hangsho.orders.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.coupons.service.CouponService;
import kr.co.hangsho.coupons.vo.Coupon;
import kr.co.hangsho.customers.services.CustomerService;
import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.deliveries.mappers.DeliveryMapper;
import kr.co.hangsho.deliveries.service.DeliveryService;
import kr.co.hangsho.deliveries.vo.Delivery;
import kr.co.hangsho.images.service.ImageService;
import kr.co.hangsho.images.vo.Image;
import kr.co.hangsho.item.service.ItemService;
import kr.co.hangsho.item.vo.Item;
import kr.co.hangsho.orders.service.OrderDetailService;
import kr.co.hangsho.orders.service.OrderService;
import kr.co.hangsho.orders.vo.Order;
import kr.co.hangsho.orders.vo.OrderDetail;
import kr.co.hangsho.orders.vo.OrderFrom;
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
   @Autowired
   private DeliveryService deliveryService;
   @Autowired
   private OrderDetailService orderDetailService;
   
   
   
   @RequestMapping("/orderPage.do")
   public String orderPage(Model model, HttpSession session) {
      
      Map<String, Object>loginInfo = (Map) session.getAttribute("LOGIN_INFO");
      Customer customer = (Customer) loginInfo.get("LOGIN_USER"); 
      if (customer == null) {
         return "redirect:/customers/login.do?error=deny";
      }

      model.addAttribute("customer", customerService.getCustomerByNo(customer.getId()));
      
      model.addAttribute("coupons", couponService.getCouponListByCustomerId(customer.getId()));
      model.addAttribute("couponCount", couponService.couponCountByCustomerId(customer.getId()));
      
      List<Delivery> deliveries = deliveryService.getDeliveryListByCustomerId(customer.getId());
      
      for(Delivery d : deliveries) {
    	  d.setCustomer(customerService.getCustomerByNo(d.getCustomer().getId()));
    	  
      }
      
      model.addAttribute("delivery", deliveries);
      
      Product product = new Product();
      product.setId(1);
//      int totalDFee = 0;
      List<Item> items = itemService.getItemListByProductNo(product.getId());
      for(Item i : items) {
    	  i.setProduct(productService.getProductByProductNo(i.getProduct().getId()));
    	  
      }
      model.addAttribute("itemDetail", items);
      
//      item = itemService.getItemByItemNo(item.getId());
//      item.setProduct(productService.getProductByProductNo(product.getId()));
      
      Image image = new Image();
      image.setId(productService.getProductByProductNo(product.getId()).getImage().getId());
      model.addAttribute("image", imageService.getImageByNo(image.getId()));
      
      
      return "/order";
   }
   
   @RequestMapping("/addOrder.do")
   public String addOrder(OrderFrom orderForm, HttpSession session) {
      
	  Map<String, Object>loginInfo = (Map) session.getAttribute("LOGIN_INFO");
      Customer customer = (Customer) loginInfo.get("LOGIN_USER"); 
      if (customer == null) {
         return "redirect:/customers/login.do?error=deny";
      }
      Delivery delivery = new Delivery();
      delivery.setCustomer(customer);
      delivery.setMainAddress(orderForm.getMain());
      delivery.setTitle(orderForm.getDeliveryTitle());
      delivery.setPostalCode(orderForm.getPostalCode());
      delivery.setDetailAddress(orderForm.getDetail());
      deliveryService.addDelivery(delivery);
      
      Order order = new Order();
      order.setMessage(orderForm.getOrderMessage());
      order.setPrice(orderForm.getOrderPrice());
      order.setReceiver(orderForm.getOrderReceiver());
      order.setCustomer(customer);
      order.setDelivery(deliveryService.getDeliveryByDeliveryId(delivery.getId()));
      orderService.addNewOrder(order);
      
      
      
      Coupon coupon = new Coupon();
      coupon.setId(orderForm.getCouponId());
      couponService.couponUsed(coupon.getId());

      
      List<OrderDetail> orderDetail = orderDetailService.getOrderDetailsByOrderId(order.getId());
      
      for(int i = 0; i<orderDetail.size(); i++) {
    	  orderDetail.get(i).setOrderId(order.getId());
    	  orderDetail.get(i).setRealPrice(orderForm.getOrderRealPrice());
    	  orderDetail.get(i).setOrderQuantity(orderForm.getOrderQuantity()[i]);
    	  orderDetail.get(i).getItem().setId(orderForm.getItemId()[i]);
    	  orderDetailService.addOrderDetail();
      }
      
      return "redirect:/index";
   }
   
   
}