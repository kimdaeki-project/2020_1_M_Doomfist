package com.doom.s1.qna.qnaFile;

import java.util.List;

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

	public List<QnaFileVO> qnaFileSelect(long qna_storekey)throws Exception{
		return sqlSession.selectList(NAMESPACE+"qnaFileSelect", qna_storekey);
	}

}
