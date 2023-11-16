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
		sqlSession.close();
		
		return subList;
	}

	@Override
	public int insertRestaurant(Restaurant r, ArrayList<Attachment> list) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result1 = rDao.insertRestaurant(sqlSession, r);
		
		int result2 = rDao.insertAttachment(sqlSession, list); 
		
		if(result1 > 0 && result2 > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		return result1 * result2;
	}
	@Override
	public int updateLike(int restNum, int userNum) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = rDao.updateLike(sqlSession,restNum,userNum);
		
		if(result>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();

		return result;
	}

	@Override
	public Restaurant selectlike(int restNum, int userNum) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Restaurant like = rDao.selectLike(sqlSession,restNum,userNum);
		
		sqlSession.close();
		
		return like;
	}

	@Override
	public int updateUnlike(int restNum, int userNum) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = rDao.updateUnlike(sqlSession,restNum,userNum);
		
		if(result>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int likeCount(int restNum) {
		SqlSession sqlSession = Template.getSqlSession();
				
		int likeCount = rDao.likeCount(sqlSession, restNum);
		
		return likeCount;
	}

	@Override
	public int createTable(int restNo, int memNum) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int createTable = rDao.createTable(sqlSession, restNo, memNum);
		
		if(createTable>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		return createTable;
	}

	@Override
	public Restaurant tableCheck(int restNo, int memNum) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Restaurant tableCheck = rDao.tableCheck(sqlSession, restNo, memNum);
		
		return tableCheck;
	}

	@Override
	public int updateFinalScore(Restaurant rev) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int updateFinalScore = rDao.updateFinalScore(sqlSession, rev);
		
		if(updateFinalScore>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return updateFinalScore;
	}

	

}
