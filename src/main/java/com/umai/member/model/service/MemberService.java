package com.umai.member.model.service;

import com.umai.member.model.vo.Member;

public interface MemberService {
	

	public int updateEmailMember(Member m);
	
	public int updateNickMember(Member m);
	
	public int updatePhoneMember(Member m);
	
	public int updatePwdMember(Member m);

	Member loginMember(Member m);  
	
	Member findId(Member m);
	
	Member findPwd(Member m);

	int insertMember(Member m);

	int selectId(Member m);

	Member checkPwdMember(Member m);
	
	int deleteMember(Member m);

}
