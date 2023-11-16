package com.umai.review.model.service;

import java.util.ArrayList;

import com.umai.review.model.vo.Review;

public interface ReviewService {
		
	ArrayList<Review> selectReview(int restNo);
	
	int deleteReview(Review r);
	
	int insertRview(Review r);
	
	Review checkReview(Review r);
	
	int selectFinalScore(int restNum);
}
