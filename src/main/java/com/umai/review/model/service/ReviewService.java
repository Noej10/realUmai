package com.umai.review.model.service;

import java.util.ArrayList;

import com.umai.review.model.vo.Review;

public interface ReviewService {
	
	int insertReview(Review re);
	
	ArrayList<Review> selectReview(int restNo);
}
