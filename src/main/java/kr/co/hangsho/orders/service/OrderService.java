package kr.co.hangsho.orders.service;

import java.util.List;

import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.orders.vo.Order;
import kr.co.hangsho.products.vo.Product;

public interface OrderService {

	void addNewOrder(Order order);
	List<Order> getAllOrders();
	Order getOrderById(int id);
	List<Order> getOrdersByCustomer(Customer customer);
}
