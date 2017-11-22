package kr.co.hangsho.review.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hangsho.review.vo.Review;

@Mapper
public interface ReviewMapper {

	List<Review> getReviewsByProductId(int proId);
}
