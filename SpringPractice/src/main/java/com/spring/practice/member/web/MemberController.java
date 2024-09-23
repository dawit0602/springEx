package com.spring.practice.member.web;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.practice.board.service.BoardService;
import com.spring.practice.member.dto.MemberDTO;
import com.spring.practice.member.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping("/registView")
	public String registView() {
		return "member/registView";
	}
	
	@PostMapping("/registDo")
	public String registDo(HttpServletRequest request) {
		
		// 데이터를 꺼내오기 전 인코딩
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nm = request.getParameter("nm");
		String ph = request.getParameter("ph");
		String em = request.getParameter("em");
		
		MemberDTO member = new MemberDTO(id, pw, nm, ph, em);
		
		memberService.registMember(member);
		
		return "redirect:/";
	}
	
	@RequestMapping("/loginView")
	public String loginView(HttpServletRequest request, Model model) {
		
		String fromUrl = request.getHeader("Referer");
		model.addAttribute("fromUrl", fromUrl);
		
		return "member/loginView";
	}
	
	@PostMapping("/loginDo")
	public String loginDo(MemberDTO member, HttpSession session, boolean rememberId, HttpServletResponse response, String fromUrl){
		MemberDTO login = memberService.loginMember(member);
		
		session.setAttribute("login", login);
		
		if(rememberId) {
			Cookie cookie = new Cookie("rememberId", member.getMemId());
			
			response.addCookie(cookie);
		}else {
			Cookie cookie = new Cookie("rememberId", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		return "redirect:" + fromUrl;
	}
	
	@RequestMapping("/logoutDo")
	public String logoutDo(HttpSession session, HttpServletRequest request) {
		// 로그아웃
		session.invalidate();
		
		String fromUrl = request.getHeader("Referer");
		
		return "redirect:" + fromUrl;
	}
	
	@RequestMapping("/memEditView")
	public String memEditView(MemberDTO member) {
		MemberDTO login = memberService.loginMember(member);
		
		if(login == null) {
			return "member/loginView";
		}
		
		return "member/memEditView";
	}
	
	@PostMapping("/memEditDo")
	public String memEditDo(MemberDTO member, HttpSession session) {
		
		memberService.memEdit(member);
		
		MemberDTO login = memberService.getMember(member.getMemId());
		session.setAttribute("login", login);
		
		
		return "redirect:/";
	}
	
	@PostMapping("/memDelDo")
	public String memDelDo(MemberDTO member, HttpSession session) {
		MemberDTO login = (MemberDTO)session.getAttribute("login");
		
		memberService.memDel(login.getMemId());
		
		session.invalidate();
		
		return "redirect:/";
	}
}
