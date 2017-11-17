package kr.co.hangsho.coupons.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangsho.coupons.mappers.CouponMapper;
import kr.co.hangsho.coupons.vo.Coupon;

@Service
public class CouponServiceImpl implements CouponService {

	@Autowired
	CouponMapper couponMapper;
	
	@Override
	public Coupon getCouponByCustomerId(int customerId) {
		
		return couponMapper.getCouponByCustomerId(customerId);
	}
}
