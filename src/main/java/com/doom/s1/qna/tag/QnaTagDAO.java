package com.doom.s1.qna.tag;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaTagDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.qna.tag.QnaTagDAO.";
	
	public int qnaTagInsert(QnaTagVO qnaTagVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"qnaTagInsert", qnaTagVO);
	}
	
	public List<QnaTagVO> qnaTagSelect(long qna_storekey)throws Exception{
		return sqlSession.selectList(NAMESPACE+"qnaTagSelect", qna_storekey);
	}

}
