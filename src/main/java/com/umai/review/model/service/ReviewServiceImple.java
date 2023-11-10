package com.umai.review.model.service;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.template.Template;
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

}
