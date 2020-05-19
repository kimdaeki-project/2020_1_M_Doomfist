package com.doom.s1.payFirst;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.doom.s1.storeList.storeMenu.StoreMenuVO;

@Controller
@RequestMapping("/payment/**")
public class PayFirstController {
	@Autowired
	private PayFirstService payFirstService;

	//진입
	@GetMapping("payFirstSelect")
	public ModelAndView payFirstSelect(PayFirstVO payFirstVO,long st_key/*,long pf_check*/) throws Exception{
		ModelAndView mv = new ModelAndView();
		//1인설트 하고
		int result = payFirstService.payFirstInsert(payFirstVO);
		//2셀렉트
		PayFirstVO paFirstVO = payFirstService.payFirstSelect(st_key);
		List<StoreMenuVO> storeMenuVOs = payFirstService.storeMenuSelect(payFirstVO.getSt_key());
		mv.addObject("vo", paFirstVO);
		mv.addObject("vo_sm", storeMenuVOs);
		mv.setViewName("payment/payFirstSelect");
		
		//0인데이터 지우기 는 paySecond에서
		return mv;
		
//		long aa = payFirstService.payFirstDelete(pf_check);
		
	}
	
	
	
}
