package com.spring.practice.board.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.practice.board.dto.BoardDTO;
import com.spring.practice.board.service.BoardService;
import com.spring.practice.common.dto.SearchDTO;
import com.spring.practice.common.exception.BizNotFoundException;
import com.spring.practice.member.dto.MemberDTO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/boardView")
	public String boardView(Model model, SearchDTO search) {
		
		List<BoardDTO> boardList = boardService.getBoardList(search);
		
		model.addAttribute("keyBoardList", boardList);
		
		return "board/boardView";
	}
	
	@RequestMapping("/boardWriteView")
	public String boardWriteView(HttpSession session, HttpServletResponse response) throws IOException {
		
		if(session.getAttribute("login") == null) {
			PrintWriter out = response.getWriter();
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			out.println("<script> alert('로그인을 한 후에 이용가능');");
			out.println("history.go(-1); </script>");
			out.close();
		}
		
		return "board/boardWriteView";
	}
		
	@PostMapping("/boardWriteDo")
	public String boardWriteDo(BoardDTO board, HttpSession session) {
		MemberDTO login = (MemberDTO)session.getAttribute("login");
		board.setMemId(login.getMemId());
		
		boardService.writeBoard(board);
		
		return "redirect:/boardView";
	}
	
	@RequestMapping("/boardDetailView")
	public String boardDetailView(int boardNo, Model model) {
		BoardDTO board = null;
		
		try {
			board = boardService.getBoard(boardNo);
		} catch (BizNotFoundException e) {
			e.printStackTrace();
			model.addAttribute("errMsg", e.getMessage());
			return "/errorPage";
		}
		 
		model.addAttribute("board", board);
		
		return "board/boardDetailView";
	}
	
	@PostMapping("/boardEditView")
	public String boardEditView(int boardNo, Model model) {
		
		try {
			BoardDTO board = boardService.getBoard(boardNo);
			model.addAttribute("board", board);
		} catch (BizNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "errPage";
		}
		
		return "board/boardEditView";
	}
	
	@PostMapping("/boardEditDo")
	public String boardEditDo(BoardDTO board) {
		boardService.editBoard(board);
		return "redirect:/boardView?boardNo=" + board.getBoNo();
	}
	
	@PostMapping("/boardDeleteDo")
	public String deleteBoard(int boardNo) {
		boardService.deleteBoard(boardNo);
		return "redirect:/boardView";
	}
}
