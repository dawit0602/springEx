package com.spring.practice.member.dao;

import org.apache.ibatis.annotations.Mapper;

import com.spring.practice.member.dto.MemberDTO;

@Mapper
public interface IMemberDAO {
	// 회원가입
	int registMember(MemberDTO member);
	
	// 로그인
	MemberDTO loginMember(MemberDTO member);
	
	// 회원정보
	MemberDTO getMember(String memId);
	
	// 회원탈퇴
	int memDel(String memId);
	
	// 회원수정
	int memEdit(MemberDTO member);
}
