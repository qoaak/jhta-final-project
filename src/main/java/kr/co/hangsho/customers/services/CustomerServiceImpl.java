package kr.co.hangsho.customers.services;

import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.customers.mappers.CustomerMapper;
import kr.co.hangsho.customers.vo.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	CustomerMapper customerMapper;
	
	@Override
	public void addNewCustomer(Customer customer) {
		customer.setId(customerMapper.getSeq());
		String shaPwd = DigestUtils.sha256Hex(customer.getPassword());
		customer.setPassword(shaPwd);
		customerMapper.addCustomer(customer);
	}

/*	@Override
	public void updateCustomerInfo(Customer customer) {
		
	}
*/
	@Override
	public Customer getCustomerById(String id) {
		return customerMapper.getCustomer(id);
	}

	@Override
	public Customer getCustomerByNo(int id) {
		
		return customerMapper.getCustomerByNo(id);
	}

	@Override
	public List<Customer> getAllCustomers() {
		return customerMapper.getCustomers()	;
	}
}
