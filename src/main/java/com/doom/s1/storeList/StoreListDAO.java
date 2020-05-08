package com.doom.s1.storeList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreListDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.storeList.StoreListDAO.";
	
	public StoreListVO storeListSelect(long st_key) throws Exception{
		System.out.println("3 : "+st_key);
		return sqlSession.selectOne(NAMESPACE+"storeListSelect", st_key);
	}

}
