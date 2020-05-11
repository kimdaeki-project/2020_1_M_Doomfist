package com.doom.s1.qnamenu;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnaMenuDAO {
	@Autowired
	private SqlSession session;
	private final String NAMEPACE="com.doom.s1.qnamenu.QnaMenuDAO";
	
	
	public int qnaMenuInsert(QnaMenuVO qnaMenuVO)throws Exception{
		return session.insert(NAMEPACE+"qnaMenuInsert",qnaMenuVO);
	}

}
