package com.spring.practice.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.practice.board.dto.BoardDTO;
import com.spring.practice.common.dto.SearchDTO;

@Mapper
public interface IBoardDAO {
	List<BoardDTO> getBoardList(SearchDTO search);
	
	int writeBoard(BoardDTO board);
	
	BoardDTO getBoard(int boardNo);
	
	int editBoard(BoardDTO board);
	
	int deleteBoard(int boardNo);
}
