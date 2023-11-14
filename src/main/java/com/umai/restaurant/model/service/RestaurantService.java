package com.umai.restaurant.model.service;

import java.util.ArrayList;

import com.umai.common.model.vo.Attachment;
import com.umai.common.model.vo.PageInfo;
import com.umai.restaurant.model.vo.Restaurant;
import com.umai.review.model.vo.Review;

public interface RestaurantService {
	
	public ArrayList<Restaurant> selectListMain();
	
	public int increaseCount(int restNo);
	
	public Restaurant selectRest(int restNo);
	

	ArrayList<Attachment> selectPhoto(int restNo);
	
	public int selectListCount();
	
	public ArrayList<Restaurant> selectList(PageInfo pi);

	public ArrayList<Attachment> selectPhoto(int restNo);
	
	public int insertRestaurant(Restaurant r, ArrayList<Attachment> list);
	
	public int updateLike(int restNum, int userNum);
	
	public int updateUnlike(int restNum, int userNum);
	
	Restaurant selectlike(int restNum, int userNum);

}
