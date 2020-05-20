package com.doom.s1.storeList.tag;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.doom.s1.util.Pager;

@Repository
public class StoreTagDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE ="com.doom.s1.storeList.tag.StoreTagDAO.";
	
	public List<StoreTagVO> storeTagSelect(long st_key)throws Exception{
		return sqlSession.selectList(NAMESPACE+"storeTagSelect", st_key);
	}
	
	public List<StoreTagVO> tagNumSelect(Pager pager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"tagNumSelect", pager);
	}

}
