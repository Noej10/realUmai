package com.umai.review.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.template.Template;
import com.umai.restaurant.model.vo.Restaurant;
import com.umai.review.model.dao.ReviewDao;
import com.umai.review.model.vo.Review;

public class ReviewServiceImple implements ReviewService{


	@Override
	public ArrayList<Review> selectReview(int restNo) {
		SqlSession sqlSession = Template.getSqlSession();
		
		ArrayList<Review> list = ReviewDao.selectReview(sqlSession, restNo);
		
		sqlSession.close();
		
		return list;
	
	}

	@Override
	public int deleteReview(Review r) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new ReviewDao().deleteReview(sqlSession, r);
		
		if(result>0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		return result;
	}

	@Override
	public int insertRview(Review r) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = new ReviewDao().insertRview(sqlSession, r);
		
		if(result>0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Review checkReview(Review r) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Review re = new ReviewDao().checkReview(sqlSession, r);
		
		return re;
	}

	@Override
	public int selectFinalScore(int restNum) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int finalScore = new ReviewDao().selectFinalScore(sqlSession, restNum);
		
		return finalScore;
	}

}
