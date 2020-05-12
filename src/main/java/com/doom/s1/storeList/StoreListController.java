package com.doom.s1.storeList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.doom.s1.storeList.storeMenu.StoreMenuVO;
@Controller
@RequestMapping(value="/storeList/**")
public class StoreListController {
	
	@Autowired
	private StoreListService storeListService;
	
	
//	@RequestMapping(value="storeListSelect")
//	public String storeListSelect()throws Exception{
//		return "storeList/storeListSelect";
//	}
	
	@RequestMapping(value = "storeListSelect", method = RequestMethod.GET)
	public ModelAndView storeListSelect(long st_key) throws Exception{
		ModelAndView mv = new ModelAndView();
		StoreListVO storeListVO = storeListService.storeListSelect(st_key);
		List<StoreMenuVO> storeMenuVOs = storeListService.storeMenuSelect(st_key);
		List<StoreListVO> storeListVOs = storeListService.storeReviewSelect(st_key);
		mv.addObject("vo",storeListVO);
		mv.addObject("vo_sm", storeMenuVOs);
		mv.addObject("vor",storeListVOs);
		mv.setViewName("storeList/storeListSelect");
		return mv;
	}
	
	@GetMapping("storeReviewWrite")
	public ModelAndView storeReviewWrite(long st_key)throws Exception{
		ModelAndView mv = new ModelAndView();
		StoreListVO storeListVO = storeListService.storeListSelect(st_key);
		mv.addObject("vo",storeListVO);
		mv.setViewName("storeList/storeReviewWrite");
		
		return mv;
	}
	

	@PostMapping("storeReviewWrite")
	public ModelAndView storeReviewWrite(StoreListVO storeListVO)throws Exception{
		ModelAndView mv = new ModelAndView();
	
		long result  = storeListService.storeReviewWrite(storeListVO);
		
		String msg ="작성 실패";
		String path="";
		
		if(result>0) {
			msg = "작성 성공";
			path="./storeListSelect?st_key="+storeListVO.getSt_key();
		}
		
		mv.addObject("result", msg);
		mv.addObject("path", path);
		mv.setViewName("common/result");
		
		return mv;
	}
	
//	@GetMapping("storeReviewSelect")
//	public ModelAndView storeReviewSelect(long st_key)throws Exception{
//		ModelAndView mvr = new ModelAndView();
//		
//		mvr.addObject("vor",storeListVOs);
//		
//		return mvr;
//	}
//	
	
}
