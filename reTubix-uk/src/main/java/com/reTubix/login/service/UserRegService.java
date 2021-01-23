package com.reTubix.login.service;

import org.springframework.stereotype.Service;

import com.reTubix.login.domain.MemberVO;

@Service
public interface UserRegService {

	int userEmailCheck(String email);
	
	int userRegister(MemberVO user);
}
