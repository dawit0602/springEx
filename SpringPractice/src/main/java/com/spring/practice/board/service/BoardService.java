package com.spring.practice.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.practice.board.dao.IBoardDAO;
import com.spring.practice.board.dto.BoardDTO;
import com.spring.practice.common.dto.SearchDTO;
import com.spring.practice.common.exception.BizNotFoundException;

@Service
public class BoardService {

	@Autowired
	IBoardDAO dao;
	
	public List<BoardDTO> getBoardList(SearchDTO search){
		List<BoardDTO> result = dao.getBoardList(search);
		return result;
	}
	
	public int writeBoard(BoardDTO board) {
		int result = dao.writeBoard(board);
		return result;
	}
	
	public BoardDTO getBoard(int boardNo) throws BizNotFoundException {
		BoardDTO result = dao.getBoard(boardNo);
		
		if(result == null) {
			throw new BizNotFoundException("해당 게시글의 번호가 존재하지 않습니다.", "API_001");
		}
		return result;
	}
	
	public int editBoard(BoardDTO board) {
		int result = dao.editBoard(board);
		return result;
	}
	
	public int deleteBoard(int boardNo) {
		int result = dao.deleteBoard(boardNo);
		return result;
	}
}
