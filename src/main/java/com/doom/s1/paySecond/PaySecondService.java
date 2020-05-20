package com.doom.s1.paySecond;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doom.s1.payFirst.PayFirstVO;

@Service
public class PaySecondService {

	@Autowired
	private PaySecondDAO paySecondDAO;

	public int paySecondInsert(PaySecondVO paySecondVO,String [] ps_menu, long[] ps_count, long[] ps_multi,long pf_key)	throws Exception {
	// 밸류 꺼내서 하나씩
		paySecondVO = new PaySecondVO();
		for (int i = 0; i<ps_menu.length; i++) {
			paySecondVO.setPs_menu(ps_menu[i]);
			paySecondVO.setPs_count(ps_count[i]);
			paySecondVO.setPs_multi(ps_multi[i]);
			paySecondVO.setPf_key(pf_key);
			paySecondDAO.paySecondInsert(paySecondVO);
		}
		return 1;
	}

	public int payFirstDelete(long pf_check) throws Exception {

		return paySecondDAO.payFirstDelete(pf_check);
	}

	public int payFirstUpdate(long pf_check) throws Exception {
		return paySecondDAO.payFirstUpdate(pf_check);

	}
	
	public int paySecondDelete(long ps_count)throws Exception{
		return paySecondDAO.paySecondDelete(ps_count);
		
	}

}
