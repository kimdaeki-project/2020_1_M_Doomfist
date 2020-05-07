package com.doom.s1.qna;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.qna.QnaDAO.";
	
	public int qnaJoin(QnaVO qnaVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"qnaJoin",qnaVO);
	}
	
}
