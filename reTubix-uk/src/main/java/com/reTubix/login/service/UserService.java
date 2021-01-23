package com.reTubix.login.service;

import org.springframework.stereotype.Service;

import com.reTubix.exception.NotUserException;
import com.reTubix.login.domain.MemberVO;

@Service
public interface UserService {
	
	MemberVO findUserByEmail(String email);
	
	MemberVO isLoginOk(String email, String pwd) throws NotUserException;	
	
	
}
