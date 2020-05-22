package com.doom.s1.paySecond;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.doom.s1.buyaddr.BuyAddrVO;
import com.doom.s1.member.MemberVO;
import com.doom.s1.seller.SellCheckService;

@Controller
@RequestMapping("/payment/**")
public class PaySecondController {
	
	@Autowired
	private PaySecondService paySecondService;
	@Autowired
	private SellCheckService sellCheckService;
	
	//진입	
	@GetMapping("paySecondSelect")
	public ModelAndView paySecondSelect()throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("payment/paySecondSelect");
	
		return mv;
		
	}
	
	@PostMapping("paySecondInsert")
	public ModelAndView paySecondSelect(PaySecondVO paySecondVO,String[] ps_menu,long[] ps_count ,long [] ps_multi,
			long pf_key, String buy_address) throws Exception{
		
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
								
			//주소넘기기
			BuyAddrVO buyAddrVO = new BuyAddrVO();
			buyAddrVO.setBuy_address(buy_address);				
			buyAddrVO.setPf_key(pf_key);
			int adr = sellCheckService.insertBuyAddr(buyAddrVO);
			
		if(result>0 && adr>0) {			
			mv.addObject("total",total);
			mv.setViewName("payment/paySecondSelect");
		}else {
			mv.addObject("result", "결제 실패" );
			mv.addObject("path", "./payFirstSelect");//총합계산
		}		
		
		
		return mv;
	
	}
	
	// 결제 성공 페이지
	@GetMapping("paySuccess")
	public ModelAndView paySuccess(long pf_key, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
					// 결제 끝나면 payFirst pfCheck를 1로 변경 
					// 적당한 위치에 집어넣어
					int result =paySecondService.payFirstUpdate(pf_key);
					//payFirst pfCheck 0삭제하여 쓰레기값 제거.
					result = paySecondService.payFirstDelete(pf_key);
					//paysecond의 count 가 0인 테이블 삭제
					result = paySecondService.paySecondDelete(pf_key);
					
					String id = ((MemberVO)session.getAttribute("member")).getId();
					BuyAddrVO buyAddrVO = sellCheckService.selectBuyAddr(id);
					int adr = sellCheckService.insertSelAddr(buyAddrVO);
					
		return mv;
	}
	
	
	
	// 결제 실패 페이지
	@GetMapping("payFail")
	public ModelAndView payFail(ModelAndView mv)  throws Exception{
		
		//실패시  이동할 경로
		mv.setViewName("payment/payFail");
		
		return mv;
		
	}
	
	
	

}
