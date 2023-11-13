package com.umai.review.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.umai.review.model.vo.Review;

public class ReviewDao {

	public static int insertreview(SqlSession sqlSession, Review re) {
		return sqlSession.insert("reviewMapper.insertReview", re);
	}
}
