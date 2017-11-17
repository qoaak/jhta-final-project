package kr.co.hangsho.coupons.service;

import kr.co.hangsho.coupons.vo.Coupon;

public interface CouponService {

	Coupon getCouponByCustomerId(int customerId);
	
}
