package com.doom.s1.qnacheck;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.doom.s1.qna.QnaVO;
import com.doom.s1.qna.qnaFile.QnaFileVO;

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
	
	public int storeFileInsert(QnaFileVO qnaFileVO)throws Exception{
		return session.insert(NAMESPACE+"storeFileInsert",qnaFileVO);
	}
	
	public int storeMenuInsert(long qna_storekey)throws Exception{
		return session.insert(NAMESPACE+"storeMenuInsert",qna_storekey);
	}

	public List<QnaVO> Statuscheck(String id)throws Exception{
		return session.selectList(NAMESPACE+"Statuscheck",id);
	}
	
	public List<QnaFileVO> selctFile(long qna_storekey)throws Exception{
		return session.selectList(NAMESPACE+"selctFile",qna_storekey);
	}

}
