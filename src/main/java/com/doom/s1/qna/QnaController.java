package com.doom.s1.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/qna/**")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("qnaJoin")
	public ModelAndView qnaJoin(QnaVO qnaVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("qna/qnaJoin");
		return mv;
	}
	@PostMapping("qnaJoin")
	public ModelAndView qnaJoin(QnaVO qnaVO,ModelAndView mv)throws Exception{
		
		int result = qnaService.qnaJoin(qnaVO);
		if(result>0) {
			mv.addObject("result","신청 완료");
			mv.addObject("path","../");
			mv.setViewName("common/result");
		}else {
			mv.addObject("result","신청 불가");
			mv.addObject("path","../");
			mv.setViewName("common/result");
		}
		
		return mv;
	}
	
	
}
