package com.spring.practice.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.practice.member.dao.IMemberDAO;
import com.spring.practice.member.dto.MemberDTO;

@Service
public class MemberService {

	@Autowired
	IMemberDAO dao;
	
	// 회원가입
	public int registMember(MemberDTO member) {
		int result = dao.registMember(member);
		return result;
	}
	
	// 로그인
	public MemberDTO loginMember(MemberDTO member) {
		MemberDTO result = dao.loginMember(member);
		return result;
	}
	
	public MemberDTO getMember(String memId) {
		MemberDTO result = dao.getMember(memId);
		
		return result;
	}
	
	public int memEdit(MemberDTO member) {
		int result = dao.memEdit(member);
		
		return result;
	}
	
	public int memDel(String memId) {
		int result = dao.memDel(memId);
		return result;
	}
	
}
