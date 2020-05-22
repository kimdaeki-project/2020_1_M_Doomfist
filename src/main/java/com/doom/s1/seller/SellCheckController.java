package com.doom.s1.seller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/seller/**")
public class SellCheckController {
	
	@Autowired
	private SellCheckService sellCheckService;
	
	@GetMapping("sellList")
	public ModelAndView sellList(long st_key)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<SellCheckVO> sellCheckVOs = sellCheckService.sellList(st_key);
		
		mv.addObject("se_list", sellCheckVOs);
		mv.setViewName("../seller/sellList");
		
		return mv;
	}

}
