package com.umai.member.model.service;

import com.umai.member.model.vo.Member;

public interface MemberService {
	
	int updateEmailMember(Member m);
	
	int updateNickMember(Member m);
	
	int updatePhoneMember(Member m);
	
	int updatePwdMember(Member m);
}
