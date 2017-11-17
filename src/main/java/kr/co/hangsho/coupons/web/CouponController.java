package kr.co.hangsho.coupons.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.hangsho.coupons.service.CouponService;

@Controller
@RequestMapping("/coupon")
public class CouponController {

	@Autowired
	private CouponService couponService;
	
	
}
