package com.doom.s1.storeList.reviewFile;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewFileDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.storeList.reviewFile.ReviewFileDAO.";
	
	public int fileInsert(ReviewFileVO reviewFileVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"fileInsert", reviewFileVO);
	}
	
	public List<ReviewFileVO> fileSelect(long re_num)throws Exception{
		return sqlSession.selectList(NAMESPACE+"fileSelect", re_num);
	}

}
