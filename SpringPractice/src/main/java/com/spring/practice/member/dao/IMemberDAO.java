package com.spring.practice.member.dao;

import org.apache.ibatis.annotations.Mapper;

import com.spring.practice.member.dto.MemberDTO;

@Mapper
public interface IMemberDAO {
	// ȸ������
	int registMember(MemberDTO member);
	
	// �α���
	MemberDTO loginMember(MemberDTO member);
	
	// ȸ������
	MemberDTO getMember(String memId);
	
	// ȸ��Ż��
	int memDel(String memId);
	
	// ȸ������
	int memEdit(MemberDTO member);
}
