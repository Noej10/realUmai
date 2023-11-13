package com.umai.restaurant.model.service;

import java.util.ArrayList;

import com.umai.common.model.vo.Attachment;
import com.umai.restaurant.model.vo.Restaurant;

public interface RestaurantService {
	
	ArrayList<Restaurant> selectListMain();
	
	public int increaseCount(int restNo);
	
	Restaurant selectRest(int restNo);
	
	ArrayList<Attachment> selectPhoto(int restNo);
}
