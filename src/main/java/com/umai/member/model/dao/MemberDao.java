package com.umai.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.umai.member.model.vo.Member;

public class MemberDao {

	public static Member loginMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.loginMember", m);

	}

	public static Member findId(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findId", m);
	}

	public static Member findPwd(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findPwd", m);
	}

}
