package com.umai.restaurant.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.model.vo.Attachment;
import com.umai.restaurant.model.vo.Restaurant;

public class RestaurantDao {

	public ArrayList<Restaurant> selectListMain(SqlSession sqlSession) {
		
		ArrayList<Restaurant> list = (ArrayList)sqlSession.selectList("restaurantMapper.selectListMain");
		
		return list;
	}

	public int increaseCount(SqlSession sqlSession, int restNo) {
		
		int result = sqlSession.update("restaurantMapper.increaseCount", restNo);
		
		return result;
	}

	public Restaurant selectRest(SqlSession sqlSession, int restNo) {
		System.out.println("daoresNo"+restNo);
		Restaurant list = sqlSession.selectOne("restaurantMapper.selectRest", restNo);
		
		return list;
	}

	public ArrayList<Attachment> selectPhoto(SqlSession sqlSession, int restNo) {
		ArrayList<Attachment> subList =  (ArrayList)sqlSession.selectList("restaurantMapper.selectPhoto", restNo);
		System.out.println("daoresNo"+restNo);
		System.out.println("dao"+subList);
		return subList;
		
	}

	
	
	

}
