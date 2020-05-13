package com.doom.s1.storeList.file;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreFileDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.storeList.file.StoreFileDAO.";
	
	public List<StoreFileVO> storeFileSelect(long st_key)throws Exception{
		return sqlSession.selectList(NAMESPACE+"storeFileSelect", st_key);
	}
	
}
