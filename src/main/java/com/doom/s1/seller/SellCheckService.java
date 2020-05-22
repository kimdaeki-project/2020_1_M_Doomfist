package com.doom.s1.seller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doom.s1.buyaddr.BuyAddrDAO;
import com.doom.s1.buyaddr.BuyAddrVO;

@Service
public class SellCheckService {

	@Autowired
	private SellCheckDAO sellCheckDAO;
	@Autowired
	private BuyAddrDAO buyAddrDAO;
	
	public List<SellCheckVO> sellList(long st_key)throws Exception{
		return sellCheckDAO.sellList(st_key);
	}
	
	public int insertBuyAddr(BuyAddrVO buyAddrVO)throws Exception{
		return buyAddrDAO.insertBuyAddr(buyAddrVO);
	}
	
	public BuyAddrVO selectBuyAddr(String id)throws Exception{
		return buyAddrDAO.selectBuyAddr(id);
	}
	
	public int insertSelAddr(BuyAddrVO buyAddrVO)throws Exception{
		return sellCheckDAO.insertSelAddr(buyAddrVO);
	}
}
