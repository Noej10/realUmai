package com.umai.member.model.service;

import com.umai.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m);  
	
	Member findId(Member m);
}
