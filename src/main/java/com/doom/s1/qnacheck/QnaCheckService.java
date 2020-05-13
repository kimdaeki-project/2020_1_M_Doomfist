package com.doom.s1.qnacheck;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaCheckService {
	@Autowired
	private QnaCheckDAO qnaCheckDAO;
	
	public int qnaCheckInsert(QnaCheckVO qnaCheckVO)throws Exception{
		
		return qnaCheckDAO.qnaCheckInsert(qnaCheckVO);
		
	}
	
	public int qnaOK(long qna_storekey)throws Exception{
		
		int result =qnaCheckDAO.qnaOK(qna_storekey);
		qnaCheckDAO.storeFileInsert(qna_storekey);
		qnaCheckDAO.storeMenuInsert(qna_storekey);
		
		qnaCheckDAO.qnaOkDel(qna_storekey);
		
		
		return result;
	}
	
	public int qnaNo(long qna_storekey)throws Exception{
		
		int result = qnaCheckDAO.qnaOkDel(qna_storekey);
		
		return result;
	}
	


}
