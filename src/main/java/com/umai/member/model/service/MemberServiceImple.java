package com.umai.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.umai.common.template.Template;
import com.umai.member.model.dao.MemberDao;
import com.umai.member.model.vo.Member;

public class MemberServiceImple implements MemberService{
	
	private MemberDao mDao = new MemberDao();
	
	@Override
	public int insertMember(Member m) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}
			sqlSession.close();
			
		return result;
	}
	
	

	
	
}
