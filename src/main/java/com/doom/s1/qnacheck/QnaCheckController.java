package com.doom.s1.qnacheck;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/qnacheck/**")
public class QnaCheckController {
	@Autowired
	private QnaCheckService qnaCheckService;
	
	@PostMapping("qnaCheckInsert")
	public int qnaCheckInsert(QnaCheckVO qnaCheckVO)throws Exception{
		int result = qnaCheckService.qnaCheckInsert(qnaCheckVO);
		
		return result;
	}
	
	@GetMapping("qnaOk")
	public ModelAndView qnaOK(HttpServletRequest request)throws Exception{
		ModelAndView mv = new ModelAndView();
		long qna_storekey = Long.parseLong(request.getParameter("qna_storekey"));
		System.out.println(qna_storekey);
		int result = qnaCheckService.qnaOK(qna_storekey);
		mv.setViewName("redirect:../qna/qnaList");
		
		return mv;
	}
	
	@GetMapping("qnaNo")
	public ModelAndView qnaNo(HttpServletRequest request)throws Exception{
		ModelAndView mv = new ModelAndView();
		long qna_storekey = Long.parseLong(request.getParameter("qna_storekey"));
		int result = qnaCheckService.qnaNo(qna_storekey);
		mv.setViewName("redirect:../qna/qnaList");
		
		return mv;
	}
	
	@GetMapping("Statuscheck")
	public String Statuscheck(HttpServletRequest request)throws Exception{
		ModelAndView mv = new ModelAndView();
		String id = request.getParameter("id");
		
	
		return "./qnacheck/Statuscheck";
	}
	
	
}
