package com.umai.restaurant.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.umai.common.model.vo.Attachment;
import com.umai.common.model.vo.PageInfo;
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
		Restaurant list = sqlSession.selectOne("restaurantMapper.selectRest", restNo);
		
		return list;
	}

	public ArrayList<Attachment> selectPhoto(SqlSession sqlSession, int restNo) {
		ArrayList<Attachment> subList =  (ArrayList)sqlSession.selectList("restaurantMapper.selectPhoto", restNo);
		
		return subList;
		
	}

	public ArrayList<Restaurant> selectSearchList(SqlSession sqlSession, PageInfo pi, String searchInput){
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("restaurantMapper.selectSearchList",searchInput,rBounds);
	}
	
	public ArrayList<Restaurant> selectReSearchList(SqlSession sqlSession, PageInfo pi, String searchInput){
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("restaurantMapper.selectReSearchList",searchInput,rBounds);
	}
	
	public int selectListCount(SqlSession sqlSession) {
		
		int result = sqlSession.selectOne("restaurantMapper.selectListCount");
		
		return result;
	}

	public int updateLike(SqlSession sqlSession, int restNum, int userNum) {
		Map<String, Object> params = new HashMap<>();
	    params.put("restNum", restNum);
	    params.put("userNum", userNum);
	    int result = sqlSession.update("restaurantMapper.updateLike", params);
	    return result;
	}

	public Restaurant selectLike(SqlSession sqlSession, int restNum, int userNum) {
		Map<String, Object> params = new HashMap<>();
	    params.put("restNum", restNum);
	    params.put("userNum", userNum);
	    Restaurant like = sqlSession.selectOne("restaurantMapper.selectLike", params);
		return like;
	}

	public int updateUnlike(SqlSession sqlSession, int restNum, int userNum) {
		Map<String, Object> params = new HashMap<>();
	    params.put("restNum", restNum);
	    params.put("userNum", userNum);
	    int result = sqlSession.update("restaurantMapper.updateUnlike", params);
	    return result;
	}
	
	public int insertRestaurant(SqlSession sqlSession, Restaurant r) {
		return sqlSession.insert("restaurantMapper.insertRestaurant",r);
	}
	
	public int insertAttachment(SqlSession sqlSession, ArrayList<Attachment> list) {
		
		int result = 0;
		
		for(Attachment a : list) {
			result = sqlSession.insert("restaurantMapper.insertAttachment",a);
		}
		 
		
		return result;
	}
	
	public int searchSStore(SqlSession sqlSession, String searchInput) {
		return sqlSession.selectOne("restaurantMapper.searchSStore", searchInput);
	}
	
	public int searchSRegion(SqlSession sqlSession, String searchInput) {
		return sqlSession.selectOne("restaurantMapper.searchSRegion", searchInput);
	}
	
}
