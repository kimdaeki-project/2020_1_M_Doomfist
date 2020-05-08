package com.doom.s1.qna.qnaFile;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaFileDAO {
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.doom.s1.qna.qnaFile.QnaFileDAO.";
	
	public int fileInsert(QnaFileVO qnaFileVO)throws Exception{
		return sqlSession.insert(NAMESPACE+"fileInsert",qnaFileVO);
	}

	

}
