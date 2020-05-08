package com.doom.s1.storeList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.doom.s1.storeList.storeMenu.StoreMenuVO;

@Controller
@RequestMapping("/storeList/**")
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
		System.out.println("1");
		mv.addObject("vo",storeListVO);
		mv.addObject("vo_sm", storeMenuVOs);
		mv.setViewName("storeList/storeListSelect");
		return mv;
	}
	
	
}
