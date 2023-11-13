package com.umai.restaurant.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.model.vo.Attachment;
import com.umai.common.model.vo.PageInfo;
import com.umai.common.template.Template;
import com.umai.restaurant.model.dao.RestaurantDao;
import com.umai.restaurant.model.vo.Restaurant;

public class RestaurantServiceImple implements RestaurantService{

	private RestaurantDao rDao = new RestaurantDao();
	
	@Override
	public ArrayList<Restaurant> selectListMain() {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Restaurant> list = rDao.selectListMain(sqlSession);
		
		sqlSession.close();
		
		return list;
		}

	@Override
	public int increaseCount(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new RestaurantDao().increaseCount(sqlSession, restNo);
		
		if(result>0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Restaurant selectRest(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Restaurant list = rDao.selectRest(sqlSession, restNo);
		
		sqlSession.close();
		
		return list;
	}

	@Override
	public ArrayList<Attachment> selectPhoto(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Attachment> subList = rDao.selectPhoto(sqlSession, restNo);
		System.out.println("ser"+subList);
		sqlSession.close();
		
		return subList;
	}

	

}
