package kr.co.hangsho.orders.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.customers.vo.Customer;
import kr.co.hangsho.orders.vo.OrderDetail;

@Mapper
public interface OrderDetailMapper {

	List<OrderDetail> getOrderDetailsByCustomer(Customer customer);
}
