package com.umai.announce.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.umai.announce.model.vo.Announce;

public class AnnounceDao {
	
	public Announce selectAnnounce(SqlSession sqlSession, int annNum) {
		return sqlSession.selectOne("announceMapper.selectAnnounce", annNum);
	}
}
