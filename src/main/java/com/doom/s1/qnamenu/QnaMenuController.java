package com.doom.s1.qnamenu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QnaMenuController {
	@Autowired
	private QnaMenuService qnaMenuService;
	
	@PostMapping("qnaMenuInsert")
	public int qnaMenuInsert(QnaMenuVO qnaMenuVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = qnaMenuService.qnaMenuInsert(qnaMenuVO);
		
		return result;
	}

}
