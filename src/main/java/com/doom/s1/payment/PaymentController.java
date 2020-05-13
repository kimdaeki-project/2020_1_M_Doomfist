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
	
	@GetMapping("paymentInsert")
	public String paymentInsert(PaymentVO paymentVO)throws Exception {
		//int result = paymentService.paymentInsert(paymentVO);
		
		return "payment/paymentInsert";
	}
	

}
