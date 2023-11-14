package com.umai.restaurant.model.service;

import java.util.ArrayList;

import com.umai.common.model.vo.Attachment;
import com.umai.restaurant.model.vo.Restaurant;

public interface RestaurantService {
	
	public ArrayList<Restaurant> selectListMain();
	
	public int increaseCount(int restNo);
	
	public Restaurant selectRest(int restNo);
	
	public ArrayList<Attachment> selectPhoto(int restNo);
	
	public int insertRestaurant(Restaurant r, ArrayList<Attachment> list);
}
