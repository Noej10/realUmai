package com.umai.review.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.umai.review.model.vo.Review;

public class ReviewDao {


	public static ArrayList<Review> selectReview(SqlSession sqlSession, int restNo) {
		return (ArrayList)sqlSession.selectList("reviewMapper.selectReview", restNo);
	}

	public int deleteReview(SqlSession sqlSession, Review r) {
		
		int result = sqlSession.update("reviewMapper.deleteReview", r);
		
		return result;
	}

	public int insertRview(SqlSession sqlSession, Review r) {
		
		int result = sqlSession.insert("reviewMapper.insertRview", r);
		
		return result;
	}

	public Review checkReview(SqlSession sqlSession, Review r) {
		
		Review re = sqlSession.selectOne("reviewMapper.checkReview", r);
		
		return re;
	}

	public int selectFinalScore(SqlSession sqlSession, int restNum) {
		
		int finalScore = sqlSession.selectOne("reviewMapper.selectFinalScore", restNum);
		
		return finalScore;
	}

	
}
