package com.umai.member.model.dao;

import org.apache.ibatis.session.SqlSession;
import com.umai.member.model.vo.Member;

public class MemberDao {


	public int updateEmailMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.updateEmailMember", m);
	}
	
	public int updateNickMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.updateNickMember", m);
	}
	
	public int updatePhoneMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.updatePhoneMember", m);
	}
	
	public int updatePwdMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.updatePwdMember", m);
	}

	public Member loginMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.loginMember", m);

	}

	public Member findId(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findId", m);
	}
	public int insertMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.insert("memberMapper.insertMember", m);
	}


	public Member findPwd(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findPwd", m);
	}

}
