package com.doom.s1.seller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.doom.s1.member.MemberVO;
import com.doom.s1.storeList.StoreListService;
import com.doom.s1.storeList.StoreListVO;

@Controller
@RequestMapping(value = "/seller/**")
public class SellCheckController {
	
	@Autowired
	private SellCheckService sellCheckService;
	@Autowired
	private StoreListService storeListService;
	
	@GetMapping("sellList")
	public ModelAndView sellList(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		String id = ((MemberVO)session.getAttribute("member")).getId();
		
		List<StoreListVO> ar = storeListService.storePage(id);		
		List<String> result = new ArrayList<String>();
		
		List<Long> orderCount = new ArrayList<Long>(); 
		
		for (StoreListVO storeListVO : ar) {
			orderCount.add(sellCheckService.orderCount(storeListVO.getSt_key()));
		}
		
		mv.addObject("or_co", orderCount);
		mv.addObject("sel_list",ar);
		mv.addObject("result",result);
		mv.setViewName("seller/sellList");
		
		return mv;
	}
	
	@GetMapping("orderCheck")
	public ModelAndView orderCheck(long st_key)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<SellCheckVO> sellCheckVOs = sellCheckService.sellCheck(st_key);
		StoreListVO storeListVO = storeListService.storeListSelect(st_key);
		
		mv.addObject("se_list", sellCheckVOs);
		mv.addObject("stvo", storeListVO);
		mv.setViewName("./seller/sellList");
		
		
		return mv;
	}

}
