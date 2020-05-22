package com.doom.s1.seller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellCheckService {

	@Autowired
	private SellCheckDAO sellCheckDAO;
	
	public List<SellCheckVO> sellList(long st_key)throws Exception{
		return sellCheckDAO.sellList(st_key);
	}
	
}
