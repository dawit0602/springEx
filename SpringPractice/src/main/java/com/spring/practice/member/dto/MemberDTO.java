package com.spring.practice.member.dto;

public class MemberDTO {
	private String memId;
	private String memPw;
	private String memNm;
	private String memPh;
	private String memEm;
	
	public MemberDTO() {
	}

	public MemberDTO(String memId, String memPw, String memNm, String memPh, String memEm) {
		this.memId = memId;
		this.memPw = memPw;
		this.memNm = memNm;
		this.memPh = memPh;
		this.memEm = memEm;
	}

	@Override
	public String toString() {
		return "MemberDTO [memId=" + memId + ", memPw=" + memPw + ", memNm=" + memNm + ", memPh=" + memPh + ", memEm="
				+ memEm + "]";
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getMemNm() {
		return memNm;
	}

	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}

	public String getMemPh() {
		return memPh;
	}

	public void setMemPh(String memPh) {
		this.memPh = memPh;
	}

	public String getMemEm() {
		return memEm;
	}

	public void setMemEm(String memEm) {
		this.memEm = memEm;
	}
	
	
}


