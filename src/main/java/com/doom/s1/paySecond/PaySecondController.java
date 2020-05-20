package com.doom.s1.paySecond;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/payment/**")
public class PaySecondController {
	@Autowired
	private PaySecondService paySecondService;
	//진입	
	@GetMapping("paySecondSelect")
	public String paySecondSelect()throws Exception{
		return "payment/paySecondSelect";
		
	}
	
	
	@PostMapping("paySecondInsert")
	public ModelAndView paySecondSelect(PaySecondVO paySecondVO, String[] ps_menu, long[] ps_count, long[] ps_multi) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("psc 1");
		System.out.println("=========");
		int result = paySecondService.paySecondInsert(paySecondVO, ps_menu, ps_count, ps_multi);
		
		System.out.println("psc 2");
		if(result>0) {
			mv.setViewName("redirect:./paySecondSelect");
		}else {
			mv.addObject("result", "결제 실패" );
			mv.addObject("path", "./payFirstSelect");
		}
		System.out.println("psc 3");
		return mv;
	}
	

}
