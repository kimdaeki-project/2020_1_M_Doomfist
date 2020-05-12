package com.doom.s1.storeList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class StoreListDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.storeList.StoreListDAO.";
	
	public StoreListVO storeListSelect(long st_key) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"storeListSelect", st_key);
	}

	public long storeReviewWrite(StoreListVO storeListVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"storeReviewWrite", storeListVO);
	}
	
	public List<StoreListVO> storeReviewSelect(long st_key)throws Exception{
		return sqlSession.selectList(NAMESPACE+"storeReviewSelect", st_key);
	}
}
