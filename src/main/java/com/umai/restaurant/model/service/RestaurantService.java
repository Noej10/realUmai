package com.umai.restaurant.model.service;

import java.util.ArrayList;

import com.umai.common.model.vo.Attachment;
import com.umai.restaurant.model.vo.Restaurant;
import com.umai.review.model.vo.Review;

public interface RestaurantService {
	
	ArrayList<Restaurant> selectListMain();
	
	public int increaseCount(int restNo);
	
	Restaurant selectRest(int restNo);
	
	ArrayList<Attachment> selectPhoto(int restNo);
	
	public int updateLike(int restNum, int userNum);
	
	public int updateUnlike(int restNum, int userNum);
	
	Restaurant selectlike(int restNum, int userNum);
}
