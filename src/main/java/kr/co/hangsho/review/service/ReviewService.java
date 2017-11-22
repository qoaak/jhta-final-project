package kr.co.hangsho.review.service;

import java.util.List;

import kr.co.hangsho.review.vo.Review;

public interface ReviewService {

	List<Review> getReviewsByProductId(int proId);
}
