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
	public ModelAndView paySecondSelect(PaySecondVO paySecondVO,String[] ps_menu,long[] ps_count ,long [] ps_multi,long pf_key) throws Exception{
		ModelAndView mv = new ModelAndView();
		//db에 데이터 삽입 하고.
		int result = paySecondService.paySecondInsert(paySecondVO,ps_menu,ps_count,ps_multi,pf_key);
		//
		
		//
		if(result>0) {
			// */*/**/*/*//*/*/*/*  꼭 추가할것
			// 결제 끝나면 payFirst pfCheck를 1로 변경 
			// 적당한 위치에 집어넣어
			// result =paySecondService.payFirstUpdate(pf_key);
			
			mv.setViewName("redirect:./paySecondSelect");
		}else {
			mv.addObject("result", "결제 실패" );
			mv.addObject("path", "./payFirstSelect");//총합계산
		}
		// 완성되면 추가.주석해제
		
		//payFirst pfCheck 0삭제하여 쓰레기값 제거.
		//result =paySecondService.payFirstDelete(pf_key);
		//paysecond의 count 가 0인 테이블 삭제
		//result = paySecondService.paySecondDelete(pf_key);
		return mv;
	}
	

}
