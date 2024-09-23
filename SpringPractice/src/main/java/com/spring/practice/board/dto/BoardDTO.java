package com.spring.practice.board.dto;

public class BoardDTO {
	private int boNo;
	private String boTitle;
	private String memId;
	private String memNm;
	private String boCon;
	private String boDate;
	
	public BoardDTO() {
	}

	public BoardDTO(int boNo, String boTitle, String memId, String memNm, String boCon, String boDate) {
		this.boNo = boNo;
		this.boTitle = boTitle;
		this.memId = memId;
		this.memNm = memNm;
		this.boCon = boCon;
		this.boDate = boDate;
	}

	@Override
	public String toString() {
		return "BoardDTO [boNo=" + boNo + ", boTitle=" + boTitle + ", memId=" + memId + ", memNm=" + memNm + ", boCon="
				+ boCon + ", boDate=" + boDate + "]";
	}

	public int getBoNo() {
		return boNo;
	}

	public void setBoNo(int boNo) {
		this.boNo = boNo;
	}

	public String getBoTitle() {
		return boTitle;
	}

	public void setBoTitle(String boTitle) {
		this.boTitle = boTitle;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemNm() {
		return memNm;
	}

	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}

	public String getBoCon() {
		return boCon;
	}

	public void setBoCon(String boCon) {
		this.boCon = boCon;
	}

	public String getBoDate() {
		return boDate;
	}

	public void setBoDate(String boDate) {
		this.boDate = boDate;
	}

	
	

}
