package com.doom.s1.member;

import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/member/**")
public class MemberController {
	
	@Autowired
	private MemberService memberService;

	
	@RequestMapping(value = "memberJoin")
	public void memberJoin() {
	}
	
	@RequestMapping(value= "memberJoin", method = RequestMethod.POST)
	public ModelAndView memberJoin(ModelAndView mv, MemberVO memberVO, HttpSession session) throws Exception{
		int result = memberService.memberJoin(memberVO,session);
		String msg ="다시 입력해주세요";
		if(result>0) {
			msg = "회원가입 성공";
		}
		
		mv.addObject("result", msg);
		mv.addObject("path", "./memberLogin");
		mv.setViewName("common/result");
		
		return mv;
	}
	
	@PostMapping("memberIdCheck")
	public ModelAndView memberIdCheck(ModelAndView mv, MemberVO memberVO, HttpSession session) throws Exception{
		memberVO = memberService.memberIdCheck(memberVO);
		//null -> 가입 가능1
		//null이 아니면 중복 
		int result =0;
		if (memberVO==null) {
			result=1;
			
		}
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
	@PostMapping("memberNaverCheck")
	public ModelAndView memberNaverCheck(ModelAndView mv, MemberVO memberVO, HttpSession session) throws Exception{
		memberVO = memberService.memberNaverCheck(memberVO);
		//null -> 가입 가능1
		//null이 아니면 중복 
		int result =0;
		if (memberVO==null) {
			result=1;
			
		}
		mv.addObject("result", result);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}

	
	@GetMapping("callback")
	public void callback() throws Exception {
//		ModelAndView mv = new ModelAndView();
//		MemberVO memberVO = new MemberVO();
//	
//		 memberVO = memberService.memberLogin(memberVO);
//		 if(memberVO != null) {
//			 session.setAttribute("member", memberVO);
//			 mv.setViewName("redirect:../");
//		 }else {
//			 mv.addObject("result", "Login Fail");
//			 mv.addObject("path", "./memberJoin");
//			 mv.setViewName("common/result");
//		 }
	}
	
	
	
	
	@RequestMapping(value= "memberLogin")
	public void memberLogin() {
	}
	

	
	@PostMapping(value = "memberLogin")
	public ModelAndView memberLogin(ModelAndView mv ,MemberVO memberVO,HttpSession session) throws Exception {
		 memberVO = memberService.memberLogin(memberVO);
		 if(memberVO != null) {
			 session.setAttribute("member", memberVO);
			 mv.setViewName("redirect:../");
		 }else {
			 mv.addObject("result", "Login Fail");
			 mv.addObject("path", "./memberJoin");
			 mv.setViewName("common/result");
		 }
		 
		 return mv;
	}
	
	@RequestMapping(value = "memberLogout")
	public String memberLogout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:../";
	}
	
	@RequestMapping(value = "memberUpdate")
	public void memberUpdate() {
		
	}
	
	@RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
	public ModelAndView memberUpdate(ModelAndView mv, MemberVO memberVO, HttpSession session ) throws Exception{
		String id = ((MemberVO)session.getAttribute("member")).getId();
		memberVO.setId(id);
		
		int result = memberService.memberUpdate(memberVO);
		
		if (result>0) {
			session.setAttribute("member", memberVO);
			mv.setViewName("redirect:./memberPage");
		}else {
			mv.addObject("result", "수정 실패");
			mv.addObject("path", "./memberPage");
			mv.setViewName("common/result");
		}
		return mv;
	}
	
	@RequestMapping(value= "memberPage")
	public void memberPage() throws Exception {

	}
	
	@RequestMapping(value = "memberDelete")
	public ModelAndView memberDelete(ModelAndView mv, HttpSession session) throws Exception{
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		int result = memberService.memberDelete(memberVO);
		if (result>0) {
			session.invalidate();
			mv.addObject("result", "탈퇴 성공");
			mv.addObject("path", "../");
			mv.setViewName("common/result");
		}else {
			mv.addObject("result", "탈퇴 실패");
			mv.addObject("path", "../");
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	

	

}