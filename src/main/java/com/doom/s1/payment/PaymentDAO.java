package com.doom.s1.payment;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDAO {
	
	@Autowired
	private SqlSession session;
	private final String NAMESPACE="com.doom.s1.payment.PaymentDAO.";
	
	public int paymentInsert(PaymentVO paymentVO)throws Exception{
		
		return session.insert(NAMESPACE+"paymentInsert", paymentVO);
	}
	
	
}
