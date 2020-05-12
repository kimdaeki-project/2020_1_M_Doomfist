package com.doom.s1.qnamenu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class QnaMenuService {
	@Autowired
	private QnaMenuDAO qnaMenuDAO;
	
	public int qnaMenuInsert(QnaMenuVO qnaMenuVO)throws Exception{
		
		
		return qnaMenuDAO.qnaMenuInsert(qnaMenuVO);
	}

}
