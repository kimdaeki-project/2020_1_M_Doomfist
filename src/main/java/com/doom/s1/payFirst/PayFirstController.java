package com.doom.s1.payFirst;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.doom.s1.paySecond.PaySecondVO;
import com.doom.s1.storeList.storeMenu.StoreMenuVO;

@Controller
@RequestMapping("/payment/**")
public class PayFirstController {
	@Autowired
	private PayFirstService payFirstService;

	//진입
	@GetMapping("payFirstSelect")
	public ModelAndView payFirstSelect(PayFirstVO payFirstVO,long st_key) throws Exception{
		ModelAndView mv = new ModelAndView();
		//1인설트 하고
		int result = payFirstService.payFirstInsert(payFirstVO);
		//2셀렉트
		PayFirstVO paFirstVO = payFirstService.payFirstSelect(st_key);
		List<StoreMenuVO> storeMenuVOs = payFirstService.storeMenuSelect(payFirstVO.getSt_key());
		mv.addObject("vo", paFirstVO);
		mv.addObject("vo_sm", storeMenuVOs);
		mv.setViewName("payment/payFirstSelect");
	
		return mv;
		
	}
	
	//나의 결제 목록 확인 페이지
	
		@GetMapping("payReceipt")
		public ModelAndView receiptPage(String id) throws Exception{
			ModelAndView mv = new ModelAndView();
			List<PayFirstVO> payFirstVOs = payFirstService.payAll(id);
			List<PaySecondVO> paySecondVOs =  payFirstService.payReceipt(id);
			
			mv.addObject("vo_pf", payFirstVOs);
			mv.addObject("vo_ps", paySecondVOs);
			
			mv.setViewName("payment/payReceipt");
			
			return mv;
		}
	
	
}
