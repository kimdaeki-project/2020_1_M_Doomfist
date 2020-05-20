package com.doom.s1.paySecond;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaySecondDAO {
	@Autowired
	private SqlSession session;
	private final String NAMESPACE="com.doom.s1.paySecond.PaySecondDAO.";
	
	public int payFirstUpdate(long pf_check) throws Exception {
		
		return session.update(NAMESPACE+"payFirstUpdate", pf_check);
	}
	
	public int payFirstDelete(long pf_check) throws Exception {
		
		return session.delete(NAMESPACE+"payFirstDelete", pf_check);
	}
	
	public int paySecondInsert(PaySecondVO paySecondVO) throws Exception {
		System.out.println("psd 1");
		return session.insert(NAMESPACE+"paySecondInsert", paySecondVO);
	}

}
