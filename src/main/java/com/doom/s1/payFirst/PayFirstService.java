package com.doom.s1.payFirst;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doom.s1.storeList.storeMenu.StoreMenuDAO;
import com.doom.s1.storeList.storeMenu.StoreMenuVO;

@Service
public class PayFirstService {

	@Autowired
	private PayFirstDAO payFirstDAO;
	@Autowired
	private StoreMenuDAO storeMenuDAO;
	
	public int payFirstInsert(PayFirstVO payFirstVO)  throws Exception{
		
		return payFirstDAO.payFirstInsert(payFirstVO);
	}
	
	
	public PayFirstVO payFirstSelect(long st_key) throws Exception{
		
		return payFirstDAO.payFirstSelect(st_key);
		
		
	}
	
	public List<StoreMenuVO> storeMenuSelect(long st_key)throws Exception{
		return storeMenuDAO.storeMenuList(st_key);
	}
	
//	public long payFirstDelete(long pf_check)throws Exception{
//		return payFirstDAO.payFirstDelete(pf_check);
//		
//	}
}
