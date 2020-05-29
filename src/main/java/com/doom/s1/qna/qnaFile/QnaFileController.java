package com.doom.s1.qna.qnaFile;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class QnaFileController {

	@Autowired
	private QnaFileService qnaFileService;
	
	@PostMapping("fileInsert")
	public ModelAndView fileInsert(QnaFileVO qnaFileVO,MultipartFile files)throws Exception{
		ModelAndView mv = new ModelAndView();
		String fileName = qnaFileService.fileInsert(qnaFileVO,files);
		
		mv.addObject("result",fileName);
		mv.setViewName("common/ajaxResult");
		
		return mv;
	}
	
}
