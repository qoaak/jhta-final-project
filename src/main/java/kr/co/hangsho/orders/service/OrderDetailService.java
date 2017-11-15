package kr.co.hangsho.orders.service;

import java.util.List;

import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.orders.vo.OrderDetail;

public interface OrderDetailService {
	List<OrderDetail> getOrderDetailsByCustomer(Customer customer); 
}
