package com.doom.s1.qnacheck;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaCheckDAO {
	@Autowired
	private SqlSession session;
	private final String NAMESPACE="com.doom.s1.qnacheck.QnaCheckDAO.";
	
	public int qnaCheckInsert(QnaCheckVO qnaCheckVO)throws Exception{
		return session.insert(NAMESPACE+"qnaCheckInsert",qnaCheckVO);
	}
	public int qnaOK(long qna_storekey)throws Exception{
		return session.insert(NAMESPACE+"qnaOK",qna_storekey);
	}
	
	public int qnaOkDel(long qna_storekey)throws Exception{
		return session.delete(NAMESPACE+"qnaOkDel",qna_storekey);
	}
}
