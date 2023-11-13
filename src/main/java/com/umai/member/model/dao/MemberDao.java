package com.umai.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import com.umai.member.model.vo.Member;

public class MemberDao {


	public int updateEmailMember(SqlSession sqlSession, Member m) {
		
		int result = sqlSession.update("memberMapper.updateEmailMember", m);
		return result;
	}
	
	public int updateNickMember(SqlSession sqlSession, Member m) {
		
		int result = sqlSession.update("memberMapper.updateNickMember", m);
		return result;
	}
	
	public int updatePhoneMember(SqlSession sqlSession, Member m) {
		
		int result = sqlSession.update("memberMapper.updatePhoneMember", m);
		return result;
	}
	
	public int updatePwdMember(SqlSession sqlSession, Member m) {
		
		int result = sqlSession.update("memberMapper.updatePwdMember", m);
		return result;
	}

	public static Member loginMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.loginMember", m);

	}

	public static Member findId(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findId", m);
	}
	public int insertMember(SqlSession sqlSession, Member m) {
		
		int result = sqlSession.insert("memberMapper.insertMember", m);
		
		return result;
	}


	public static Member findPwd(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findPwd", m);
	}

}
