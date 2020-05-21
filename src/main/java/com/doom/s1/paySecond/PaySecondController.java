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
	public ModelAndView paySecondSelect()throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("payment/paySecondSelect");
		
		
		return mv;
		
	}
	
	@PostMapping("paySecondInsert")
	public ModelAndView paySecondSelect(PaySecondVO paySecondVO,String[] ps_menu,long[] ps_count ,long [] ps_multi,long pf_key) throws Exception{
		ModelAndView mv = new ModelAndView();
		//db에 데이터 삽입 하고.
		int result = 1;		
		// 총합 구하기
				long total = 0;
				paySecondVO = new PaySecondVO();
				for (int i = 0; i<ps_menu.length; i++) {
					paySecondVO.setPs_menu(ps_menu[i]);
					paySecondVO.setPs_count(ps_count[i]);
					paySecondVO.setPs_multi(ps_multi[i]);
					total = total + ps_multi[i];
					paySecondVO.setPf_key(pf_key);
					paySecondService.paySecondInsert(paySecondVO,ps_menu,ps_count,ps_multi,pf_key);
				}
		
		System.out.println("총가격"+total);
		
		/////
		if(result>0) {
			// */*/**/*/*//*/*/*/*  꼭 추가할것
			// 결제 끝나면 payFirst pfCheck를 1로 변경 
			// 적당한 위치에 집어넣어
			// result =paySecondService.payFirstUpdate(pf_key);
			mv.addObject("total",total);
			//mv.setViewName("redirect:./paySecondSelect");
			mv.setViewName("payment/paySecondSelect");
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
	
	// 결제 성공 페이지
	@GetMapping("paySuccess")
	public void paySuccess() throws Exception {
		
		
	}
	
	
	
	// 결제 실패 페이지
	@GetMapping("payFail")
	public void payFail()  throws Exception{
		
	}
	
	//나의 결제 목록 확인 페이지
	
	@GetMapping("payReceipt")
	public void receiptPage() throws Exception{
		
	}
	
	

}
