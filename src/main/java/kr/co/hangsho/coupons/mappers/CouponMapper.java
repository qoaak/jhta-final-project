package kr.co.hangsho.coupons.mappers;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.coupons.vo.Coupon;

@Mapper
public interface CouponMapper {

	int getSeq();
	Coupon getCouponByCustomerId(int customerId);
}
