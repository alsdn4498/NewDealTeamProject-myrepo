package com.studycafe.member.service;

import org.springframework.stereotype.Service;

import com.studycafe.member.entity.MemberAddressEntity;
import com.studycafe.member.entity.MemberEntity;

@Service
public interface MemberService {
	
	public void insertMember(MemberEntity member, MemberAddressEntity address);
	
}
