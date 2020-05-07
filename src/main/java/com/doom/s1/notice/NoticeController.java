package com.doom.s1.notice;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.doom.s1.board.BoardVO;
import com.doom.s1.util.Pager;


@Controller
@RequestMapping("/notice/**")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute("board")
	public String getBoard()throws Exception{
		return "notice";
	}
	
	@RequestMapping(value = "noticeDelete", method = RequestMethod.GET)
	public ModelAndView boardDelete(long num, ModelAndView mv)throws Exception{
		int result = noticeService.boardDelete(num);
		if(result>0) {
			mv.addObject("result", "Delete Success");
		}else {
			mv.addObject("result", "Delete Fail");
		}
		mv.addObject("path", "./noticeList");
		mv.setViewName("common/result");
		return mv;
	}
	
	@RequestMapping(value = "noticeUpdate", method = RequestMethod.GET)
	public String boardUpdate(long num, Model model)throws Exception{
		 BoardVO boardVO = noticeService.boardSelect(num);
		 model.addAttribute("vo", boardVO);
		 //파일갯수확인
		 NoticeVO noticeVO = (NoticeVO)boardVO;
		 
		return "board/boardUpdate";
	}
	
	@RequestMapping(value = "noticeUpdate", method = RequestMethod.POST)
	public String boardUpdate(NoticeVO noticeVO)throws Exception{

		
		
		int result = noticeService.boardUpdate(noticeVO);
		String path="";
		
		if(result>0) {
			path= "redirect:./noticeList";
		}else {
			path= "redirect:./noticeSelect?num="+noticeVO.getNo_num();
		}
		 
		return path;
	}
	
	
	
	@RequestMapping(value = "noticeWrite", method = RequestMethod.GET)
	public String boardWrite()throws Exception{
		return "board/boardWrite";
	}
	
	@RequestMapping(value = "noticeWrite", method = RequestMethod.POST)
	public ModelAndView boardWrite(/* HttpServletRequest request,*/ NoticeVO noticeVO, ModelAndView mv)throws Exception{
		
	
		
		
		//테스트: 파일 여러개 넘어오는거
		/*
		 * for (MultipartFile file:noticeVO.getFiles()) {
		 * System.out.println(file.getOriginalFilename());
		 * 
		 * }
		 */
		// 파일완성하고 오류났을떄 확인 :  넘어오는 파라미너 이름들 리턴타입 :열거형 Enumeration<String>
		/*
		 * Enumeration<String> er = request.getParameterNames(); //다음거 가져오고 false 되면 긑
		 * while (er.hasMoreElements()) { System.out.println(er.nextElement());
		 * 
		 * }
		 */		
		
		  int result = noticeService.boardWrite(noticeVO);
		  if(result>0) {
		  mv.setViewName("redirect:./noticeList");
		  }else {
			  mv.addObject("result", "Write Fail");
			  mv.addObject("path", "./noticeList");
			  mv.setViewName("common/result");
			  }
		 
		return mv;
	}
	
	@RequestMapping(value="noticeSelect" , method = RequestMethod.GET)
	public ModelAndView boardSelect(long num)throws Exception{
		ModelAndView mv = new ModelAndView();
		BoardVO boardVO = noticeService.boardSelect(num);
		mv.addObject("vo", boardVO);
		mv.setViewName("board/boardSelect");
		return mv;
	}
	
	@RequestMapping(value = "noticeList", method = RequestMethod.GET)
	public ModelAndView boardList(Pager pager, ModelAndView mv)throws Exception{
		
		 List<BoardVO> ar = noticeService.boardList(pager);
		 mv.addObject("list", ar);
		 mv.addObject("pager", pager);
		 mv.setViewName("board/boardList");
		 return mv;
	}

}
