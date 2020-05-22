package com.doom.s1.seller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.doom.s1.buyaddr.BuyAddrVO;

@Repository
public class SellCheckDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.seller.SellCheckDAO.";
	
	public List<SellCheckVO> sellList(long st_key)throws Exception{
		return sqlSession.selectList(NAMESPACE+"sellCheck", st_key);
	}
	
	public int insertSelAddr(BuyAddrVO buyAddrVO)throws Exception{
		return sqlSession.update(NAMESPACE+"insertSelAddr", buyAddrVO);
	}
	
}
