package com.doom.s1.storeList.storeMenu;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreMenuDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.storeList.storeMenu.StoreMenuDAO.";
	
	public List<StoreMenuVO> storeMenuList(long st_key)throws Exception{
		return sqlSession.selectList(NAMESPACE+"storeMenuSelect", st_key);
	}

}
