package com.doom.s1.payment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {
	
	@Autowired
	private PaymentDAO paymentDAO;
	
	public int paymentInsert(PaymentVO paymentVO) throws Exception{
		
		return paymentDAO.paymentInsert(paymentVO);
	}
}
