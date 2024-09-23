package com.spring.practice.common.dto;

public class SearchDTO {
	private String searchWord;
	private String searchOption;
	
	private int curPage = 1;
	private int rowSizePerPage = 10;
	private int pageSize = 10;
	private int totalRowCount;
	
	private int firstRow;
	private int lastRow;
	private int totalPageCount;
	private int firstPage;
	private int lastPage;
	
	public void pageSetting() {
		totalPageCount = (int)Math.ceil((double)totalRowCount / rowSizePerPage);
		
		firstRow = (curPage - 1) * rowSizePerPage + 1;
		lastRow = firstRow + rowSizePerPage -1;
		
		if(lastRow >= totalRowCount) {
			lastRow = totalRowCount;
		}
		
		firstPage = ((curPage - 1) / pageSize) * pageSize +1;
		lastPage = firstPage + pageSize -1;
		
		if(lastPage > totalPageCount) {
			lastPage = totalPageCount;
		}
	};
	
	public SearchDTO() {
	}

	public SearchDTO(String searchWord, String searchOption) {
		this.searchWord = searchWord;
		this.searchOption = searchOption;
	}

	@Override
	public String toString() {
		return "SearchDTO [searchWord=" + searchWord + ", searchOption=" + searchOption + "]";
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	public String getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}
	
	
}
