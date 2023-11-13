package com.umai.member.model.service;

import com.umai.member.model.vo.Member;

public interface MemberService {
	

	int updateEmailMember(Member m);
	
	int updateNickMember(Member m);
	
	int updatePhoneMember(Member m);
	
	int updatePwdMember(Member m);

	Member loginMember(Member m);  
	
	Member findId(Member m);
	
	Member findPwd(Member m);

	int insertMember(Member m);
}
