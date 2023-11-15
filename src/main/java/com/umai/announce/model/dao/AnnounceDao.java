package com.umai.announce.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.umai.announce.model.vo.Announce;
import com.umai.common.model.vo.PageInfo;

public class AnnounceDao {
	
	public int selectListCount(SqlSession sqlSession) {
		
		
		int result = sqlSession.selectOne("announceMapper.selectListCount");
		
		
		return result;
		
	}
	
	public int insertAnnounce(SqlSession sqlSession, Announce ann) {
		
		return sqlSession.insert("announceMapper.insertAnnounce",ann);
	}
	
	public ArrayList<Announce> selectList(SqlSession sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("announceMapper.selectList", null, rBounds);

	}

	public Announce selectAnnounce(SqlSession sqlSession, int annNum) {
		return sqlSession.selectOne("announceMapper.selectAnnounce", annNum);
		}
	
	
	public Announce selectDetail(SqlSession sqlSession, int annNum) {
		return sqlSession.selectOne("announceMapper.selectDetail", annNum);
	}
	
	public int updateAnnounce(SqlSession sqlSession, Announce ann) {
		return sqlSession.update("announceMapper.updateAnnounce", ann);
	}
}
