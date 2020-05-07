package com.doom.s1.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaService {

	@Autowired
	private QnaDAO qnaDAO;
	
	public int qnaJoin(QnaVO qnaVO) throws Exception{
		return qnaDAO.qnaJoin(qnaVO);
	}
}
