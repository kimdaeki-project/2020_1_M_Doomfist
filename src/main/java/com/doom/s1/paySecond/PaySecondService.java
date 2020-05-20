package com.doom.s1.paySecond;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaySecondService {

	@Autowired
	private PaySecondDAO paySecondDAO;

	public int paySecondInsert(PaySecondVO paySecondVO, String[] ps_menu, long[] ps_count, long[] ps_multi)
			throws Exception {
		System.out.println("pf-key"+paySecondVO.getPf_key());
		System.out.println("menu"+paySecondVO.getPs_menu());
		System.out.println("count"+paySecondVO.getPs_count());
		System.out.println("Ps_key"+paySecondVO.getPs_key());
		System.out.println("Ps_multi"+paySecondVO.getPs_multi());
		
		
		return paySecondDAO.paySecondInsert(paySecondVO);
	}

	public int payFirstDelete(long pf_check) throws Exception {

		return paySecondDAO.payFirstDelete(pf_check);
	}

	public int payFirstUpdate(long pf_check) throws Exception {
		return paySecondDAO.payFirstUpdate(pf_check);

	}

}
