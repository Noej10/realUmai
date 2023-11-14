package com.umai.review.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.template.Template;
import com.umai.restaurant.model.vo.Restaurant;
import com.umai.review.model.dao.ReviewDao;
import com.umai.review.model.vo.Review;

public class ReviewServiceImple implements ReviewService{

	@Override
	public int insertReview(Review re) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = ReviewDao.insertreview(sqlSession, re);
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public ArrayList<Review> selectReview(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Review> list = ReviewDao.selectReview(sqlSession, restNo);
		
		sqlSession.close();
		
		return list;
	
	}

}
