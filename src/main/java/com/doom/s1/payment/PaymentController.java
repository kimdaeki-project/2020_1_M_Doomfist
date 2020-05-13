package com.doom.s1.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/payment/**")
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	
	//결제 하러 가기
	@GetMapping("paymentInsert")
	public String paymentInsert(PaymentVO paymentVO)throws Exception {
		//int result = paymentService.paymentInsert(paymentVO);
		
		return "payment/paymentInsert";
	}
	
	//결제 준비
	@GetMapping("paymentReady")
	public String paymentReady()throws Exception{
		return "payment/paymentReady";
		
	}
	
	//결제 실패했을때
	@GetMapping("payFail")
	public String payFail() throws Exception{
		return "payment/payFail";
		
	}
	//결제 성공시
	@GetMapping("paySuccess")
	public String paySuccess() throws Exception {
		return "payment/paySuccess";
		
	}
	

}
